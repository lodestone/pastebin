class Settings < Settingslogic
  source "#{Rails.root}/config/vim_pastebin.yml"
  namespace Rails.env
end

Settings['omniauth'] ||= Settingslogic.new({})
Settings.omniauth['enabled'] = false if Settings.omniauth['enabled'].nil?
