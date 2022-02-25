function onCreate()
	
	-- stage.
	makeLuaSprite('stageback', 'stages/stage/stageb', -600, -300)
	setScrollFactor('stageback', 1, 1)
	addLuaSprite('stageback', false)

	makeLuaSprite('stagecurtains', 'stages/stage/stagecurtains', -633, -400)
	setScrollFactor('stagecurtains', 1.2, 1.2)
	addLuaSprite('stagecurtains', false)

	makeLuaSprite('stageoverlay', 'stages/stage/stageoverlay', -600, -300)
	setScrollFactor('stageoverlay', 1, 1)
	scaleObject('stageoverlay', 4, 4)
	addLuaSprite('stageoverlay', true)
	
	-- tsk.
	addCharacterToList('dad-1alt', 'dad')
	addCharacterToList('dad-2-1', 'dad')
	addCharacterToList('dad-2-1alt', 'dad')
	addCharacterToList('dad-2alt', 'dad')
	addCharacterToList('gf-2alt', 'gf')

	close(true)
end