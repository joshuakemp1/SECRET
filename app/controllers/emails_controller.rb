class EmailsController < ApplicationController
  # GET /emails/1
  # GET /emails/1.json
  def show
    @email = Email.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @email }
    end
  end

  # GET /emails/new
  # GET /emails/new.json
  def new
    @email = Email.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @email }
    end
  end

  # POST /emails
  # POST /emails.json
  def create
    @email = Email.new(params[:email])

    respond_to do |format|

      if @email.save

        format.html { redirect_to @email, notice: 'Thanks for writing, I\'ll be in touch soon :-)' }
        format.json { render json: @email, status: :created, location: @email }
        EmailMailer.lets_talk(@email).deliver
      else
        format.html { render action: "new" }
        format.json { render json: @email.errors, status: :unprocessable_entity }
      end
    end
  end
end

