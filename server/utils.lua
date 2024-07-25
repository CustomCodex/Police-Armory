-- Function to send a log to Discord webhook
function sendWebhookLog(webhookUrl, content)
    PerformHttpRequest(webhookUrl, function(err, text, headers) 
        if err ~= 200 then
            print('Error sending webhook log: ' .. err)
        end
    end, 'POST', json.encode({
        content = content,
        username = "Politie Wapenkamer Log",
        avatar_url = "https://example.com/avatar.png" -- optional, replace with your avatar URL
    }), { ['Content-Type'] = 'application/json' })
end
