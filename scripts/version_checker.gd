extends RichTextLabel

var request

func _ready():
	if bingo_info.version_checked:
		set_bbcode(bingo_info.version_display)
		return
	
	var t = Thread.new()
	t.start(self, "download_version")

func download_version(userdata):
	request = get_node("HTTPRequest")
	request.set_download_file("user://version.txt")
	request.request("https://raw.githubusercontent.com/mrawlingst/ActuallyFunBingo/master/version.txt", StringArray([]), true)

func _on_HTTPRequest_request_completed( result, response_code, headers, body ):
	var file = File.new()
	file.open("user://version.txt", file.READ)
	print(file.get_as_text())
	bingo_info.version_checked = true
	
	set_version(version_check(file.get_as_text()))
	set_bbcode(bingo_info.version_display)

func set_version(update):
	var txt = "v" + bingo_info.version
	
	if update:
		txt = txt + " - [color=blue][url=https://github.com/mrawlingst/ActuallyFunBingo/releases]update![/url][/color]"
	
	bingo_info.version_display = txt

# True if update available
func version_check(extVersion):
	var split = extVersion.split(".")
	var extMajor = int(split[0])
	var extMinor = int(split[1])
	var extPatch = int(split[2])
	
	split = bingo_info.version.split(".")
	var major = int(split[0])
	var minor = int(split[1])
	var patch = int(split[2])
	
	if extMajor == major and extMinor == minor and extPatch == patch:
		return false
	
	if extMajor > major:
		return true
	
	if extMajor == major and extMinor > minor:
		return true
	
	if extMajor == major and extMinor == minor and extPatch > patch:
		return true
	
	return false

func _on_Version_meta_clicked( meta ):
	OS.shell_open(meta)
