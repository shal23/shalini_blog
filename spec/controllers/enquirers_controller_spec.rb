require 'spec_helper'

# This spec was generated by rspec-rails when you ran the scaffold generator.
# It demonstrates how one might use RSpec to specify the controller code that
# was generated by Rails when you ran the scaffold generator.
#
# It assumes that the implementation code is generated by the rails scaffold
# generator.  If you are using any extension libraries to generate different
# controller code, this generated spec may or may not pass.
#
# It only uses APIs available in rails and/or rspec-rails.  There are a number
# of tools you can use to make these specs even more expressive, but we're
# sticking to rails and rspec-rails APIs to keep things simple and stable.
#
# Compared to earlier versions of this generator, there is very limited use of
# stubs and message expectations in this spec.  Stubs are only used when there
# is no simpler way to get a handle on the object needed for the example.
# Message expectations are only used when there is no simpler way to specify
# that an instance is receiving a specific message.

describe EnquirersController do

  # This should return the minimal set of attributes required to create a valid
  # Enquirer. As you add validations to Enquirer, be sure to
  # adjust the attributes here as well.
  let(:valid_attributes) { { "name" => "MyString" } }

  # This should return the minimal set of values that should be in the session
  # in order to pass any filters (e.g. authentication) defined in
  # EnquirersController. Be sure to keep this updated too.
  let(:valid_session) { {} }

  describe "GET index" do
    it "assigns all enquirers as @enquirers" do
      enquirer = Enquirer.create! valid_attributes
      get :index, {}, valid_session
      assigns(:enquirers).should eq([enquirer])
    end
  end

  describe "GET show" do
    it "assigns the requested enquirer as @enquirer" do
      enquirer = Enquirer.create! valid_attributes
      get :show, {:id => enquirer.to_param}, valid_session
      assigns(:enquirer).should eq(enquirer)
    end
  end

  describe "GET new" do
    it "assigns a new enquirer as @enquirer" do
      get :new, {}, valid_session
      assigns(:enquirer).should be_a_new(Enquirer)
    end
  end

  describe "GET edit" do
    it "assigns the requested enquirer as @enquirer" do
      enquirer = Enquirer.create! valid_attributes
      get :edit, {:id => enquirer.to_param}, valid_session
      assigns(:enquirer).should eq(enquirer)
    end
  end

  describe "POST create" do
    describe "with valid params" do
      it "creates a new Enquirer" do
        expect {
          post :create, {:enquirer => valid_attributes}, valid_session
        }.to change(Enquirer, :count).by(1)
      end

      it "assigns a newly created enquirer as @enquirer" do
        post :create, {:enquirer => valid_attributes}, valid_session
        assigns(:enquirer).should be_a(Enquirer)
        assigns(:enquirer).should be_persisted
      end

      it "redirects to the created enquirer" do
        post :create, {:enquirer => valid_attributes}, valid_session
        response.should redirect_to(Enquirer.last)
      end
    end

    describe "with invalid params" do
      it "assigns a newly created but unsaved enquirer as @enquirer" do
        # Trigger the behavior that occurs when invalid params are submitted
        Enquirer.any_instance.stub(:save).and_return(false)
        post :create, {:enquirer => { "name" => "invalid value" }}, valid_session
        assigns(:enquirer).should be_a_new(Enquirer)
      end

      it "re-renders the 'new' template" do
        # Trigger the behavior that occurs when invalid params are submitted
        Enquirer.any_instance.stub(:save).and_return(false)
        post :create, {:enquirer => { "name" => "invalid value" }}, valid_session
        response.should render_template("new")
      end
    end
  end

  describe "PUT update" do
    describe "with valid params" do
      it "updates the requested enquirer" do
        enquirer = Enquirer.create! valid_attributes
        # Assuming there are no other enquirers in the database, this
        # specifies that the Enquirer created on the previous line
        # receives the :update_attributes message with whatever params are
        # submitted in the request.
        Enquirer.any_instance.should_receive(:update_attributes).with({ "name" => "MyString" })
        put :update, {:id => enquirer.to_param, :enquirer => { "name" => "MyString" }}, valid_session
      end

      it "assigns the requested enquirer as @enquirer" do
        enquirer = Enquirer.create! valid_attributes
        put :update, {:id => enquirer.to_param, :enquirer => valid_attributes}, valid_session
        assigns(:enquirer).should eq(enquirer)
      end

      it "redirects to the enquirer" do
        enquirer = Enquirer.create! valid_attributes
        put :update, {:id => enquirer.to_param, :enquirer => valid_attributes}, valid_session
        response.should redirect_to(enquirer)
      end
    end

    describe "with invalid params" do
      it "assigns the enquirer as @enquirer" do
        enquirer = Enquirer.create! valid_attributes
        # Trigger the behavior that occurs when invalid params are submitted
        Enquirer.any_instance.stub(:save).and_return(false)
        put :update, {:id => enquirer.to_param, :enquirer => { "name" => "invalid value" }}, valid_session
        assigns(:enquirer).should eq(enquirer)
      end

      it "re-renders the 'edit' template" do
        enquirer = Enquirer.create! valid_attributes
        # Trigger the behavior that occurs when invalid params are submitted
        Enquirer.any_instance.stub(:save).and_return(false)
        put :update, {:id => enquirer.to_param, :enquirer => { "name" => "invalid value" }}, valid_session
        response.should render_template("edit")
      end
    end
  end

  describe "DELETE destroy" do
    it "destroys the requested enquirer" do
      enquirer = Enquirer.create! valid_attributes
      expect {
        delete :destroy, {:id => enquirer.to_param}, valid_session
      }.to change(Enquirer, :count).by(-1)
    end

    it "redirects to the enquirers list" do
      enquirer = Enquirer.create! valid_attributes
      delete :destroy, {:id => enquirer.to_param}, valid_session
      response.should redirect_to(enquirers_url)
    end
  end

end
