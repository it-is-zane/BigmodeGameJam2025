extends Node2D

var max_quote_visible = 2
var quote_timer = 0
# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	quote_timer += delta
	if(quote_timer > max_quote_visible):
		$SpeechBubble/Label.text = ""
	if($SpeechBubble/Label.text == ""):
		quote_timer = 0
	pass
	
	
func SaySomethin(quote):
	$SpeechBubble/Label.text = quote

func SetNPC(name):
	$Boy.visible = false
	$Biker.visible = false
	$Punk.visible = false
	$Gangster2.visible = false
	$Gangster3.visible = false
	$Tophat.visible = false
	$Backpack.visible = false
	if(name == "Boy"):
		$Boy.visible = true
	if(name == "Biker"):
		$Biker.visible = true
	if(name == "Punk"):
		$Punk.visible = true
	if(name == "Gangster2"):
		$Gangster2.visible = true
	if(name == "Gangster3"):
		$Gangster3.visible = true
	if(name == "Tophat"):
		$Tophat.visible = true
	if(name == "Backpack"):
		$Backpack.visible = true
