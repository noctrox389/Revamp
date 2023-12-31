function onCreate()
    makeLuaSprite('vg', 'RedVG', 0, 0);
	setObjectCamera('vg', 'camHUD');
	setProperty('vg.alpha', 0)
	addLuaSprite('vg', true);

    makeLuaSprite('blackFuck', 'no', 0, 0);
	scaleObject('blackFuck', 1920, 1080);
	setObjectCamera('blackFuck', 'other');
	addLuaSprite('blackFuck', true);

	makeLuaSprite('startCircle', 't', 777, 0);
	setObjectCamera('startCircle', 'other');
	scaleObject('startCircle', 2.5, 2.5);
	addLuaSprite('startCircle', true);

	makeLuaSprite('startText', 'text', -1200, 0);
	scaleObject('startText', 2.5, 2.5);
	setObjectCamera('startText', 'other');
	addLuaSprite('startText', true);
end

function onSongStart()
	runTimer('textmove', 0.6)
	runTimer('textfade', 1.9)
end

function onTimerCompleted(tag)
    if tag == 'textmove' then
		doTweenX('circleTween', 'startCircle', 0, 0.5, 'linear');
		doTweenX('textTween', 'startText', 0, 0.5, 'linear');
	end
	
    if tag == 'textfade' then
		doTweenAlpha('graphicAlpha', 'blackFuck', 0, 1, 'linear');
		doTweenAlpha('circleAlpha', 'startCircle', 0, 1, 'linear');
		doTweenAlpha('textAlpha', 'startText', 0, 1, 'linear');
	end
end