class BookReviewsController < ApplicationController
  # GET /book_reviews
  # GET /book_reviews.json
  def index
    @book_reviews = BookReview.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @book_reviews }
    end
  end

  # GET /book_reviews/1
  # GET /book_reviews/1.json
  def show
    @book_review = BookReview.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @book_review }
    end
  end

  # GET /book_reviews/new
  # GET /book_reviews/new.json
  def new
    @book_review = BookReview.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @book_review }
    end
  end

  # GET /book_reviews/1/edit
  def edit
    @book_review = BookReview.find(params[:id])
  end

  # POST /book_reviews
  # POST /book_reviews.json
  def create
    @book_review = BookReview.new(params[:book_review])

    respond_to do |format|
      if @book_review.save
        format.html { redirect_to @book_review, notice: 'Book review was successfully created.' }
        format.json { render json: @book_review, status: :created, location: @book_review }
      else
        format.html { render action: "new" }
        format.json { render json: @book_review.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /book_reviews/1
  # PUT /book_reviews/1.json
  def update
    @book_review = BookReview.find(params[:id])

    respond_to do |format|
      if @book_review.update_attributes(params[:book_review])
        format.html { redirect_to @book_review, notice: 'Book review was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @book_review.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /book_reviews/1
  # DELETE /book_reviews/1.json
  def destroy
    @book_review = BookReview.find(params[:id])
    @book_review.destroy

    respond_to do |format|
      format.html { redirect_to book_reviews_url }
      format.json { head :no_content }
    end
  end
end
