"""
main objectif  change the "MainZone-P-Continued" tag in  "MainZone-Continued" for the new model.pt
"""
from pathlib import Path
import xml.etree.ElementTree as ET

from utils.process_xml import process_xml_file
from utils.write_xml import write_xml

# -------------------------------
# Configuration
# -------------------------------
XML_FOLDER = Path("Aretius_1-Tim_001")  # change to your folder path
OUTPUT_FOLDER = Path("Aretius_1-Tim_001_updated")
OUTPUT_FOLDER.mkdir(exist_ok=True)

# Register namespaces
XSI_NS = "http://www.w3.org/2001/XMLSchema-instance"
ALTO_NS = "http://www.loc.gov/standards/alto/ns-v4#"
ET.register_namespace("xsi", XSI_NS)
ET.register_namespace("", ALTO_NS)  # default namespace

# -------------------------------
# Main
# -------------------------------
def main():
    for xml_file in XML_FOLDER.glob("*.xml"):
        updated_tree = process_xml_file(xml_file)
        if updated_tree:
            out_path = OUTPUT_FOLDER / xml_file.name
            write_xml(updated_tree, out_path)
        else:
            print(f"No change: {xml_file.name}")

if __name__ == "__main__":
    main()
