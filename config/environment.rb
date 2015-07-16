require 'yaml'

module Environment
    env_file = '../.env.yml'

    if File.exists?(env_file)
      YAML.load_file(env_file).each do |key, value|
      ENV[key.to_s] = value
    end 
  end
end