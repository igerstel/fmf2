class AddZipToPlaces < ActiveRecord::Migration
  def change
		add_column :farms, :zip, :integer, :default => 60601
		add_column :restaurants, :zip, :integer, :default => 60601
  end
end


# http://query.yahooapis.com/v1/public/yql?q=select%20centroid%20from%20geo.places%20where%20text%3D%22#{zip}%22&format=json&diagnostics=true&callback=cbfunc
# http://developer.yahoo.com/yql/console/#h=select%20centroid%20from%20geo.places%20where%20text%3D%2297217%22