import xml.etree.ElementTree as ET

# Namespaces
XSI_NS = "http://www.w3.org/2001/XMLSchema-instance"
ALTO_NS = "http://www.loc.gov/standards/alto/ns-v4#"
NS = {"alto": ALTO_NS}

def process_xml_file(xml_file):
    """
    Load XML, update OtherTag attributes if needed, and return the updated tree.
    """
    try:
        tree = ET.parse(xml_file)
        root = tree.getroot()
        changed = False

        for other_tag in root.findall(".//alto:OtherTag", NS):
            for attr in ["LABEL", "DESCRIPTION"]:
                val = other_tag.get(attr)
                if val and "MainZone-P-Continued" in val:
                    other_tag.set(attr, val.replace("MainZone-P-Continued", "MainZone-Continued"))
                    changed = True

        return tree if changed else None
    except Exception as e:
        print(f"Error processing {xml_file.name}: {e}")
        return None
