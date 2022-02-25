function onEvent(name,a,b) -- events for finale familiar.
    
    if name == 'drain' then
        function opponentNoteHit()
            health = getProperty('health')
            if getProperty('health') > 0.4 then
                setProperty('health', health- 0.0573);
            end
        end
    end

    if name == 'loss' then
        function opponentNoteHit()
            health = getProperty('health')
            if getProperty('health') > 0.1 then
                setProperty('health', health- 0.0);
            end
        end
    end

    if name == 'flash' then
        setProperty('flashw.alpha', 1)
        doTweenAlpha('white', 'flashw', 0, 1.5, 'quintOut')
    end
end