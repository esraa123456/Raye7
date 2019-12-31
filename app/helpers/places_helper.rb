module PlacesHelper
    def get_places
        x = Place.order(:name).select([ :name, :id ])
        return x.map{ |y| [ y.name, y.id ] }
    end
end
