from __future__ import annotations
import json
from pathlib import Path

ROOT = Path(__file__).resolve().parent.parent
metadata_path = ROOT / "metadata.json"

if not metadata_path.exists():
    raise SystemExit("metadata.json not found. Download it from Sourcify before running this script.")

with metadata_path.open() as f:
    metadata = json.load(f)

sources: dict[str, dict[str, str]] = {}
for source_path in metadata.get("sources", {}):
    file_path = ROOT / source_path
    if not file_path.exists():
        raise FileNotFoundError(f"Source file missing: {file_path}")
    sources[source_path] = {"content": file_path.read_text()}

settings = dict(metadata.get("settings", {}))
# The PolygonScan standard JSON input schema does not recognise
# "compilationTarget" under the settings object. Keeping it triggers a
# warning and prevents the verifier from compiling the contract bytecode.
# We drop it here and instead rely on PolygonScan's separate contract name
# parameter when submitting the verification request.
settings.pop("compilationTarget", None)
settings.setdefault(
    "outputSelection",
    {
        "*": {
            "*": [
                "abi",
                "evm.bytecode",
                "evm.deployedBytecode",
                "metadata",
                "storageLayout",
            ],
            "": ["ast"],
        }
    },
)

standard_input = {
    "language": metadata.get("language", "Solidity"),
    "sources": sources,
    "settings": settings,
}

output_path = ROOT / "polygon-verify" / "ForjaElo-polygonscan-standard-input.json"
output_path.write_text(json.dumps(standard_input, indent=2))
print(f"PolygonScan standard input written to: {output_path}")
