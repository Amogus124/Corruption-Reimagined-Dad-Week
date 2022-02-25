function onCreate()

    -- support.
	makeLuaSprite('flashw', '', 0, 0)
	makeGraphic('flashw', 1280, 720, 'FFFFFF')
	setObjectCamera('flashw', 'hud')
	setProperty('flashw.alpha', 0)
	addLuaSprite('flashw', false)
end

function onStartCountdown()

	setProperty('health', 1.9)
    setProperty('boyfriend.alpha', 0)

    if not lowQuality then
        debugPrint('enable low quality to remove background changes.')
    end

    if lowQuality then
        debugPrint('disable low quality for background changes.')
    end
end

function onStepHit()

    -- flash.
    if curStep == 528 or curStep == 1056 or curStep == 1472 or curStep == 2128 or curStep == 2994 or curStep == 4320 or curStep == 4352 or curStep == 4992 then
        triggerEvent('flash', 0, 0)
    end

    if curStep == 528 then -- dad & gf are demons!

        if not lowQuality then
            removeLuaSprite('stageback', true)
            setProperty('backalt.visible', true)
        end

        setProperty('defaultCamZoom', 0.9)
        setProperty('boyfriend.alpha', 1)
        triggerEvent('Change Character', '1', 'dad-3')
        triggerEvent('Change Character', '2', 'gf-3')
        triggerEvent('drain', 0, 0)       
    end
    
    if curStep == 1056 then -- pico appear!
        if not lowQuality then
            setProperty('backpico.visible', true)
            setProperty('backalt.visible', false)
        end

        setProperty('health', 1)
        triggerEvent('Change Character', '0', 'pico-corrupt')
    end
    
    if curStep == 1472 then -- spooky's appear!
        if not lowQuality then
            removeLuaSprite('backpico', true)
            setProperty('backspoky.visible', true)
        end

        setProperty('health', 1)
        triggerEvent('Change Character', '0', 'spooky-corrupt')
    end
    
    if curStep == 2128 then -- mom appear! very bad for dad & gf
        if not lowQuality then
            removeLuaSprite('backspoky', true)
            setProperty('backmom.visible', true)
        end

        setProperty('health', 1)
        triggerEvent('Change Character', '0', 'mom-corrupt')
        triggerEvent('Change Character', '1', 'dad-3alt')
        triggerEvent('Change Character', '2', 'gf-3alt')
    end
    
    if curStep == 2944 then -- bf appear!
        if not lowQuality then
            removeLuaSprite('backmom', true)
            setProperty('backalt.visible', true)
        end

        setProperty('health', 1)
        triggerEvent('Change Character', '0', 'bf-corrupt')
        triggerEvent('Change Character', '1', 'dad-3alt2')
        triggerEvent('Change Character', '2', 'gf-3alt2')
    end
    
    if curStep == 4320 then -- lost power! this looks bad.
        triggerEvent('Change Character', '1', 'dad-3fuck')
        triggerEvent('Change Character', '2', 'gf-3fuck')
        triggerEvent('loss', 0, 0)
    end
    
    if curStep == 4352 then -- too bad i would say.
        triggerEvent('Change Character', '1', 'dad-3alt3')
        triggerEvent('Change Character', '2', 'gf-3alt3')
    end
    
    if curStep == 4992 then -- ...
        doTweenAlpha('white', 'flashw', 1, 2, 'quintOut')
    end
    
    if curStep == 5017 then -- dad & gf lost to corruption...
        doTweenAlpha('white', 'flashw', 0, 1.5, 'quintOut')
        triggerEvent('Change Character', '1', 'dad-3alt4')
        triggerEvent('Change Character', '2', 'gf-3alt4')
    end
end