class Blog < ActiveRecord::Base

  def self.search(search)
    where("title LIKE ? OR secnario LIKE ?", "%#{search}%","%#{search}%")
  end  

  # def self.search(search, page)
  #   paginate :per_page => 5, :page => page,
  #            :conditions => ['title like ?', "%#{search}%"],
  #            :order => 'id'
  # end

end
