class Distribution < ActiveXML::Base
  
  def all_vendors
     ret = Array.new
     self.each( 'distribution' ) { |d| ret << d.value('vendor') }
     ret.uniq
  end
 
end
