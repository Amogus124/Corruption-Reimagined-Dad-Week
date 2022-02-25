function onCreate()

    -- change bg.
	if not lowQuality then
        makeAnimatedLuaSprite('backpico', 'stages/stage/familiar/stagebackAltPico', -600, -300)
        addAnimationByPrefix('backpico', 'glowp', 'stageback glow0', 24, true)
        objectPlayAnimation('backpico', 'glowp', true)
        setProperty('backpico.visible', false)
        addLuaSprite('backpico', false)
        
        makeAnimatedLuaSprite('backspoky', 'stages/stage/familiar/stagebackAltSpooky', -600, -300)
        addAnimationByPrefix('backspoky', 'glows', 'stageback glow0', 24, true)
        objectPlayAnimation('backspoky', 'glows', true)
        setProperty('backspoky.visible', false)
        addLuaSprite('backspoky', false)
        
        makeAnimatedLuaSprite('backmom', 'stages/stage/familiar/stagebackAltMom', -600, -300)
        addAnimationByPrefix('backmom', 'glowm', 'stageback glow0', 24, true)
        objectPlayAnimation('backmom', 'glowm', true)
        setProperty('backmom.visible', false)
        addLuaSprite('backmom', false)
	end
    
    -- stage.
	makeAnimatedLuaSprite('backalt', 'stages/stage/familiar/stagebackAlt', -600, -300)
    addAnimationByPrefix('backalt', 'glow', 'stageback glow0', 24, true)
	objectPlayAnimation('backalt', 'glow', true)
	addLuaSprite('backalt', false)

	if not lowQuality then
        makeLuaSprite('stageback', 'stages/stage/stageback', -600, -300)
        setScrollFactor('stageback', 1, 1)
        addLuaSprite('stageback', false)
    end
	
	makeLuaSprite('stagefront2', 'stages/stage/stagefront', -650, 600)
	setScrollFactor('stagefront2', 1, 1)
	scaleObject('stagefront2', 1.1, 1.1)
	addLuaSprite('stagefront2', false)

	makeLuaSprite('stagecurtains2', 'stages/stage/stagecurtains', -633, -400)
	setScrollFactor('stagecurtains2', 1.2, 1.2)
	addLuaSprite('stagecurtains2', false)

	makeLuaSprite('stageoverlay2', 'stages/stage/stageoverlay', -600, -300)
	setScrollFactor('stageoverlay2', 1, 1)
	scaleObject('stageoverlay2', 4, 4)
	addLuaSprite('stageoverlay2', true)

    -- tsk.
	addCharacterToList('dad-3', 'dad')
	addCharacterToList('dad-3alt', 'dad')
	addCharacterToList('dad-3alt2', 'dad')
	addCharacterToList('dad-3fuck', 'dad')
	addCharacterToList('dad-3alt3', 'dad')
	addCharacterToList('dad-3alt4', 'dad')
	addCharacterToList('gf-3', 'gf')
	addCharacterToList('gf-3alt', 'gf')
	addCharacterToList('gf-3alt2', 'gf')
	addCharacterToList('gf-3fuck', 'gf')
	addCharacterToList('gf-3alt3', 'gf')
	addCharacterToList('gf-3alt4', 'gf')
	addCharacterToList('bf-corrupt', 'boyfriend')
	addCharacterToList('pico-corrupt', 'boyfriend')
	addCharacterToList('spooky-corrupt', 'boyfriend')
	addCharacterToList('mom-corrupt', 'boyfriend')

    if not lowQuality then
        precacheImage('stages/stage/familiar/stagebackAltPico')
        precacheImage('stages/stage/familiar/stagebackAltSpooky')
        precacheImage('stages/stage/familiar/stagebackAltMom')
        precacheImage('stages/stage/familiar/stagebackAlt')
    end
    
    close(true)
end