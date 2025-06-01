class FrostyQuestsController < ApplicationController
  before_action :set_frosty_quest, only: %i[ show edit update destroy ]

  # GET /frosty_quests or /frosty_quests.json
  def index
    @frosty_quests = FrostyQuest.all
  end

  # GET /frosty_quests/1 or /frosty_quests/1.json
  def show
  end

  # GET /frosty_quests/new
  def new
    @frosty_quest = FrostyQuest.new
  end

  # GET /frosty_quests/1/edit
  def edit
  end

  # POST /frosty_quests or /frosty_quests.json
  def create
    @frosty_quest = FrostyQuest.new(frosty_quest_params)

    respond_to do |format|
      if @frosty_quest.save
        format.html { redirect_to @frosty_quest, notice: "Frosty quest was successfully created." }
        format.json { render :show, status: :created, location: @frosty_quest }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @frosty_quest.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /frosty_quests/1 or /frosty_quests/1.json
  def update
    respond_to do |format|
      if @frosty_quest.update(frosty_quest_params)
        format.html { redirect_to @frosty_quest, notice: "Frosty quest was successfully updated." }
        format.json { render :show, status: :ok, location: @frosty_quest }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @frosty_quest.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /frosty_quests/1 or /frosty_quests/1.json
  def destroy
    @frosty_quest.destroy!

    respond_to do |format|
      format.html { redirect_to frosty_quests_path, status: :see_other, notice: "Frosty quest was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_frosty_quest
      @frosty_quest = FrostyQuest.find(params.expect(:id))
    end

    # Only allow a list of trusted parameters through.
    def frosty_quest_params
      params.expect(frosty_quest: [ :name, :status ])
    end
end
