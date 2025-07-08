@tool
extends EditorScript

# Installation script for AI Coding Assistant
# Run this script from the Godot editor to install the plugin

func _run():
	print("🚀 Installing AI Coding Assistant Plugin...")
	
	# Check Godot version
	var version = Engine.get_version_info()
	if version.major < 4:
		print("❌ Error: This plugin requires Godot 4.x or later")
		print("   Current version: " + str(version.major) + "." + str(version.minor))
		return
	
	print("✅ Godot version check passed: " + str(version.major) + "." + str(version.minor))
	
	# Check if addons directory exists
	var addons_dir = "res://addons/"
	if not DirAccess.dir_exists_absolute(addons_dir):
		print("📁 Creating addons directory...")
		DirAccess.make_dir_recursive_absolute(addons_dir)
	
	# Check if plugin directory exists
	var plugin_dir = "res://addons/ai_coding_assistant/"
	if DirAccess.dir_exists_absolute(plugin_dir):
		print("✅ Plugin directory found: " + plugin_dir)
	else:
		print("❌ Error: Plugin directory not found")
		print("   Expected: " + plugin_dir)
		print("   Please ensure the plugin files are in the correct location")
		return
	
	# Verify required files
	var required_files = [
		"plugin.cfg",
		"plugin.gd", 
		"ai_assistant_dock.gd",
		"ai_api_manager.gd",
		"setup_guide.gd"
	]
	
	var missing_files = []
	for file in required_files:
		var file_path = plugin_dir + file
		if not FileAccess.file_exists(file_path):
			missing_files.append(file)
	
	if missing_files.size() > 0:
		print("❌ Error: Missing required files:")
		for file in missing_files:
			print("   - " + file)
		return
	
	print("✅ All required files found")
	
	# Enable plugin in project settings
	var project_settings = ProjectSettings
	var enabled_plugins = project_settings.get_setting("editor_plugins/enabled", PackedStringArray())
	
	var plugin_path = "res://addons/ai_coding_assistant/plugin.cfg"
	if plugin_path not in enabled_plugins:
		enabled_plugins.append(plugin_path)
		project_settings.set_setting("editor_plugins/enabled", enabled_plugins)
		project_settings.save()
		print("✅ Plugin enabled in project settings")
	else:
		print("✅ Plugin already enabled in project settings")
	
	# Create user settings directory if it doesn't exist
	var user_dir = OS.get_user_data_dir()
	print("📁 User data directory: " + user_dir)
	
	print("\n🎉 Installation completed successfully!")
	print("\n📋 Next steps:")
	print("1. Restart Godot to activate the plugin")
	print("2. Look for the 'AI Assistant' dock in the left panel")
	print("3. Get an API key from your preferred provider:")
	print("   • Google Gemini: https://makersuite.google.com/app/apikey")
	print("   • Hugging Face: https://huggingface.co/settings/tokens")
	print("   • Cohere: https://dashboard.cohere.ai/api-keys")
	print("4. Configure the plugin with your API key")
	print("5. Start coding with AI assistance!")
	
	print("\n📚 Documentation:")
	print("• README: res://addons/ai_coding_assistant/README.md")
	print("• Changelog: res://addons/ai_coding_assistant/CHANGELOG.md")
	
	print("\n🆘 Need help?")
	print("• Check the built-in setup guide")
	print("• Review the documentation")
	print("• Report issues on GitHub")
	
	print("\n✨ Happy coding with AI!")

# Alternative installation check function
static func verify_installation() -> Dictionary:
	var result = {
		"success": false,
		"errors": [],
		"warnings": [],
		"info": []
	}
	
	# Check Godot version
	var version = Engine.get_version_info()
	if version.major < 4:
		result["errors"].append("Requires Godot 4.x or later (current: " + str(version.major) + "." + str(version.minor) + ")")
		return result
	
	result["info"].append("Godot version: " + str(version.major) + "." + str(version.minor))
	
	# Check plugin files
	var plugin_dir = "res://addons/ai_coding_assistant/"
	if not DirAccess.dir_exists_absolute(plugin_dir):
		result["errors"].append("Plugin directory not found: " + plugin_dir)
		return result
	
	var required_files = [
		"plugin.cfg",
		"plugin.gd",
		"ai_assistant_dock.gd", 
		"ai_api_manager.gd"
	]
	
	for file in required_files:
		if not FileAccess.file_exists(plugin_dir + file):
			result["errors"].append("Missing file: " + file)
	
	# Check if plugin is enabled
	var enabled_plugins = ProjectSettings.get_setting("editor_plugins/enabled", PackedStringArray())
	var plugin_path = "res://addons/ai_coding_assistant/plugin.cfg"
	if plugin_path not in enabled_plugins:
		result["warnings"].append("Plugin not enabled in project settings")
	else:
		result["info"].append("Plugin enabled in project settings")
	
	if result["errors"].size() == 0:
		result["success"] = true
		result["info"].append("Installation verified successfully")
	
	return result
