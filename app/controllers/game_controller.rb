class GameController < ApplicationController
  before_action :authenticate_user!
  before_action :set_game, only: %i[show edit update destroy]

  def index
    @games = Game.all
  end

  def new
    # @countries = Country.all
    # @games = Game.new
    @country = Country.first
    @game = Game.new(payload: {
      status: "init",
      event: "",
      current_year: 2020,
      faction: [
        {
          user: current_user.id,
          country: @country,
          snapshot: {
            "2015": {
              properties: {
                economy: 310_000_000 * 10,
                food: 310_000_000 * 3,
                satisfaction: 80,
                population: 310_000_000,
                eco_awareness: 50,
                pollution: 5_172_338_000
              },
              tags: [{name: "Big Farm Country", time: 1}, {name: "Fossil Fuel", time: 3}]
            },
            "2020": {
              properties: {
                economy: 310_000_000 * 9,
                food: 310_000_000 * 3,
                satisfaction: 85,
                population: 310_000_000,
                eco_awareness: 60,
                pollution: 5_150_300_000
              },
              tags: []
            },
            "2025": {
              properties: {
                economy: 310_000_000 * 9.5,
                food: 310_000_000 * 3,
                satisfaction: 90,
                population: 310_000_000,
                eco_awareness: 65,
                pollution: 5_120_300_000
              },
              tags: []
            },
            "2030": {
              properties: {
                economy: 310_000_000 * 8,
                food: 310_000_000 * 3,
                satisfaction: 85,
                population: 310_000_000,
                eco_awareness: 75,
                pollution: 4_950_300_000
              },
              tags: []
            },
            "2035": {
              properties: {
                economy: 310_000_000 * 6,
                food: 310_000_000 * 3,
                satisfaction: 75,
                population: 310_000_000,
                eco_awareness: 80,
                pollution: 4_550_300_000
              },
              tags: []
            },
            "2040": {
              properties: {
                economy: 310_000_000 * 7,
                food: 310_000_000 * 3,
                satisfaction: 75,
                population: 310_000_000,
                eco_awareness: 85,
                pollution: 4_350_300_000
              },
              tags: []
            },
            "2045": {
              properties: {
                economy: 310_000_000 * 8,
                food: 310_000_000 * 3,
                satisfaction: 80,
                population: 310_000_000,
                eco_awareness: 90,
                pollution: 4_050_300_000
              },
              tags: []
            },
          }
        }
      ]
    })
    if @game.save
      redirect_to @game
    else
      render "new"
    end
  end

  def create
    @country = Country.first
    @game = Game.new(payload: {
      status: "init",
      event: "",
      current_year: 2015,
      faction: [
        {
          user: current_user.id,
          country: @country,
          snapshot: {
            "2015": {
              properties: @country.properties,
              tags: []
            }
          }
        }
      ]
    })
    if @game.save
      redirect_to @game
    else
      render "new"
    end
  end

  def show
  end

  private

  def set_game
    @game = Game.find(params[:id])
  end

  def game_params
    params.fetch(:game).permit(:country)
  end

end
