class RestaurantsController < ApplicationController
  def index
    @restaurants = Restaurant.all

    render("restaurant_templates/index.html.erb")
  end

  def show
    @restaurant = Restaurant.find(params.fetch("id_to_display"))

    render("restaurant_templates/show.html.erb")
  end

  def new_form
    render("restaurant_templates/new_form.html.erb")
  end

  def create_row
    @restaurant = Restaurant.new

    @restaurant.name = params.fetch("name")
    @restaurant.location = params.fetch("location")
    @restaurant.comments = params.fetch("comments")
    @restaurant.website = params.fetch("website")
    @restaurant.likes = params.fetch("likes")

    if @restaurant.valid?
      @restaurant.save

      redirect_to("/restaurants", :notice => "Restaurant created successfully.")
    else
      render("restaurant_templates/new_form.html.erb")
    end
  end

  def edit_form
    @restaurant = Restaurant.find(params.fetch("prefill_with_id"))

    render("restaurant_templates/edit_form.html.erb")
  end

  def update_row
    @restaurant = Restaurant.find(params.fetch("id_to_modify"))

    @restaurant.name = params.fetch("name")
    @restaurant.location = params.fetch("location")
    @restaurant.comments = params.fetch("comments")
    @restaurant.website = params.fetch("website")
    @restaurant.likes = params.fetch("likes")

    if @restaurant.valid?
      @restaurant.save

      redirect_to("/restaurants/#{@restaurant.id}", :notice => "Restaurant updated successfully.")
    else
      render("restaurant_templates/edit_form.html.erb")
    end
  end

  def destroy_row
    @restaurant = Restaurant.find(params.fetch("id_to_remove"))

    @restaurant.destroy

    redirect_to("/restaurants", :notice => "Restaurant deleted successfully.")
  end
end
