namespace :db do
	desc "Fill database with sample data"
	
	task populate: :environment do
		Car.create!(make: "Toyota",
			price: "35000".to_i,
		image: "",
		model: "hilux",
		year: "2010".to_i,
		mileage: "3562".to_i,
		color: "green",
		transmission: "manual",
		fuel_type: "petrol",
		engine: "2.4",
		category: "bakkie")
		
		10.times do |n|
			make = "Toyota"
			price = "35000".to_i
			image = ""
			model = "hilux"
			year = "2010".to_i
			mileage = "3562".to_i
			color = "green"
			transmission = "manual"
			fuel_type = "petrol"
			category = "bakkie"
			engine = "2.4"


			Car.create!(make: make,
			price: price,
		image: image,
		model: model,
		year: year,
		mileage: mileage,
		color: color,
		transmission: transmission,
		fuel_type: fuel_type,
		engine: engine,
		category: category)
		end

		10.times do |n|
			make = "Isuzu"
			price = "35000".to_i
			image = ""
			model = "lx"
			year = "2013".to_i
			mileage = "350".to_i
			color = "green"
			transmission = "manual"
			fuel_type = "Diesel"
			category = "bakkie"
			engine = "3.0"


			Car.create!(make: make,
			price: price,
		image: image,
		model: model,
		year: year,
		mileage: mileage,
		color: color,
		transmission: transmission,
		fuel_type: fuel_type,
		engine: engine,
		category: category)
		end

		10.times do |n|
			make = "Nissan"
			price = "35000".to_i
			image = ""
			model = "Hardbody"
			year = "2010".to_i
			mileage = "3562".to_i
			color = "green"
			transmission = "manual"
			fuel_type = "petrol"
			category = "bakkie"
			engine = "3.0"


			Car.create!(make: make,
			price: price,
		image: image,
		model: model,
		year: year,
		mileage: mileage,
		color: color,
		transmission: transmission,
		fuel_type: fuel_type,
		engine: engine,
		category: category)
		end

		10.times do |n|
			make = "BMW"
			price = "35000".to_i
			image = ""
			model = "5 series"
			year = "2010".to_i
			mileage = "3562".to_i
			color = "green"
			transmission = "manual"
			fuel_type = "petrol"
			category = "sedan"
			engine = "3.0"


			Car.create!(make: make,
			price: price,
		image: image,
		model: model,
		year: year,
		mileage: mileage,
		color: color,
		transmission: transmission,
		fuel_type: fuel_type,
		engine: engine,
		category: category)
		end

		10.times do |n|
			make = "Toyota"
			price = "35000".to_i
			image = ""
			model = "landcruiser"
			year = "2010".to_i
			mileage = "3562".to_i
			color = "green"
			transmission = "manual"
			fuel_type = "petrol"
			category = "4x4"
			engine = "4.2"


			Car.create!(make: make,
			price: price,
		image: image,
		model: model,
		year: year,
		mileage: mileage,
		color: color,
		transmission: transmission,
		fuel_type: fuel_type,
		engine: engine,
		category: category)
		end

		10.times do |n|
			make = "Toyota"
			price = "35000".to_i
			image = ""
			model = "corolla"
			year = "2010".to_i
			mileage = "3562".to_i
			color = "green"
			transmission = "manual"
			fuel_type = "petrol"
			category = "sedan"
			engine = "1.6"


			Car.create!(make: make,
			price: price,
		image: image,
		model: model,
		year: year,
		mileage: mileage,
		color: color,
		transmission: transmission,
		fuel_type: fuel_type,
		engine: engine,
		category: category)
		end

		10.times do |n|
			make = "Mercedes-Benz"
			price = "35000".to_i
			image = ""
			model = "C200 kompressor"
			year = "2010".to_i
			mileage = "3562".to_i
			color = "green"
			transmission = "manual"
			fuel_type = "petrol"
			category = "sedan"
			engine = "2.4"


			Car.create!(make: make,
			price: price,
		image: image,
		model: model,
		year: year,
		mileage: mileage,
		color: color,
		transmission: transmission,
		fuel_type: fuel_type,
		engine: engine,
		category: category)
		end

		10.times do |n|
			make = "VW"
			price = "35000".to_i
			image = ""
			model = "polo"
			year = "2010".to_i
			mileage = "3562".to_i
			color = "green"
			transmission = "manual"
			fuel_type = "petrol"
			category = "sedan"
			engine = "1.4"


			Car.create!(make: make,
			price: price,
		image: image,
		model: model,
		year: year,
		mileage: mileage,
		color: color,
		transmission: transmission,
		fuel_type: fuel_type,
		engine: engine,
		category: category)
		end

		10.times do |n|
			make = "VW"
			price = "35000".to_i
			image = ""
			model = "GTI"
			year = "2010".to_i
			mileage = "3562".to_i
			color = "green"
			transmission = "manual"
			fuel_type = "petrol"
			category = "sedan"
			engine = "2.4"


			Car.create!(make: make,
			price: price,
		image: image,
		model: model,
		year: year,
		mileage: mileage,
		color: color,
		transmission: transmission,
		fuel_type: fuel_type,
		engine: engine,
		category: category)
		end

		10.times do |n|
			make = "Ferrari"
			price = "35000".to_i
			image = ""
			model = "California"
			year = "2010".to_i
			mileage = "3562".to_i
			color = "green"
			transmission = "manual"
			fuel_type = "petrol"
			category = "sports"
			engine = "4.2"


			Car.create!(make: make,
			price: price,
		image: image,
		model: model,
		year: year,
		mileage: mileage,
		color: color,
		transmission: transmission,
		fuel_type: fuel_type,
		engine: engine,
		category: category)
		end

		10.times do |n|
			make = "Nissan"
			price = "35000".to_i
			image = ""
			model = "GTR"
			year = "2010".to_i
			mileage = "3562".to_i
			color = "green"
			transmission = "manual"
			fuel_type = "petrol"
			category = "sports"
			engine = "3.8"


			Car.create!(make: make,
			price: price,
		image: image,
		model: model,
		year: year,
		mileage: mileage,
		color: color,
		transmission: transmission,
		fuel_type: fuel_type,
		engine: engine,
		category: category)
		end

	end
end