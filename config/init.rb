config_dir = File.dirname(__FILE__)

gems = %w(pony)
gems.each { |name| require name }  

# libs = %w(../../lib/resource/lib/items )
# libs.each { |lib| require config_dir + '/' + lib }
# 
# loads models 
Dir.glob("#{config_dir}/../models/*").each { |file| require file  }  


                                                                       