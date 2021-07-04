"""
Macro for retrieving the regex pattern check assets.
"""

load("//app:fake_script_assets.bzl", "generate_assets_list_from_text_protos")

def retrieve_maven_assets(name, asset_dir):
    """
    Converts a single asset text proto to a new binary asset.

    Args:
        name: str. The name of this target.
        asset_dir: str. The path to the assets directory where the textproto files are present.
            Example: 'src/main/assets'

    Returns:
        list of str. The list of new proto binary asset files that were generated.
    """
    return generate_assets_list_from_text_protos(
        name = name,
        maven_dependencies_file_name = [
            "maven_dependencies",
        ],
    )
