storage = 9876
seconds = 3
-- Config --
function onLogin(cid)
    gone = os.time()
    if getGlobalStorageValue(storage)+seconds < gone then
        setGlobalStorageValue(storage, os.time())
        return TRUE
    else
        return FALSE
    end
return TRUE
end
