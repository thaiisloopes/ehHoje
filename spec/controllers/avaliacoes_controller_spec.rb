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

describe AvaliacoesController do

  # This should return the minimal set of attributes required to create a valid
  # Avaliacao. As you add validations to Avaliacao, be sure to
  # adjust the attributes here as well.
  let(:valid_attributes) { { "Nota" => "MyString" } }

  # This should return the minimal set of values that should be in the session
  # in order to pass any filters (e.g. authentication) defined in
  # AvaliacoesController. Be sure to keep this updated too.
  let(:valid_session) { {} }

  describe "GET index" do
    it "assigns all avaliacoes as @avaliacoes" do
      avaliacao = Avaliacao.create! valid_attributes
      get :index, {}, valid_session
      assigns(:avaliacoes).should eq([avaliacao])
    end
  end

  describe "GET show" do
    it "assigns the requested avaliacao as @avaliacao" do
      avaliacao = Avaliacao.create! valid_attributes
      get :show, {:id => avaliacao.to_param}, valid_session
      assigns(:avaliacao).should eq(avaliacao)
    end
  end

  describe "GET new" do
    it "assigns a new avaliacao as @avaliacao" do
      get :new, {}, valid_session
      assigns(:avaliacao).should be_a_new(Avaliacao)
    end
  end

  describe "GET edit" do
    it "assigns the requested avaliacao as @avaliacao" do
      avaliacao = Avaliacao.create! valid_attributes
      get :edit, {:id => avaliacao.to_param}, valid_session
      assigns(:avaliacao).should eq(avaliacao)
    end
  end

  describe "POST create" do
    describe "with valid params" do
      it "creates a new Avaliacao" do
        expect {
          post :create, {:avaliacao => valid_attributes}, valid_session
        }.to change(Avaliacao, :count).by(1)
      end

      it "assigns a newly created avaliacao as @avaliacao" do
        post :create, {:avaliacao => valid_attributes}, valid_session
        assigns(:avaliacao).should be_a(Avaliacao)
        assigns(:avaliacao).should be_persisted
      end

      it "redirects to the created avaliacao" do
        post :create, {:avaliacao => valid_attributes}, valid_session
        response.should redirect_to(Avaliacao.last)
      end
    end

    describe "with invalid params" do
      it "assigns a newly created but unsaved avaliacao as @avaliacao" do
        # Trigger the behavior that occurs when invalid params are submitted
        Avaliacao.any_instance.stub(:save).and_return(false)
        post :create, {:avaliacao => { "Nota" => "invalid value" }}, valid_session
        assigns(:avaliacao).should be_a_new(Avaliacao)
      end

      it "re-renders the 'new' template" do
        # Trigger the behavior that occurs when invalid params are submitted
        Avaliacao.any_instance.stub(:save).and_return(false)
        post :create, {:avaliacao => { "Nota" => "invalid value" }}, valid_session
        response.should render_template("new")
      end
    end
  end

  describe "PUT update" do
    describe "with valid params" do
      it "updates the requested avaliacao" do
        avaliacao = Avaliacao.create! valid_attributes
        # Assuming there are no other avaliacoes in the database, this
        # specifies that the Avaliacao created on the previous line
        # receives the :update_attributes message with whatever params are
        # submitted in the request.
        Avaliacao.any_instance.should_receive(:update).with({ "Nota" => "MyString" })
        put :update, {:id => avaliacao.to_param, :avaliacao => { "Nota" => "MyString" }}, valid_session
      end

      it "assigns the requested avaliacao as @avaliacao" do
        avaliacao = Avaliacao.create! valid_attributes
        put :update, {:id => avaliacao.to_param, :avaliacao => valid_attributes}, valid_session
        assigns(:avaliacao).should eq(avaliacao)
      end

      it "redirects to the avaliacao" do
        avaliacao = Avaliacao.create! valid_attributes
        put :update, {:id => avaliacao.to_param, :avaliacao => valid_attributes}, valid_session
        response.should redirect_to(avaliacao)
      end
    end

    describe "with invalid params" do
      it "assigns the avaliacao as @avaliacao" do
        avaliacao = Avaliacao.create! valid_attributes
        # Trigger the behavior that occurs when invalid params are submitted
        Avaliacao.any_instance.stub(:save).and_return(false)
        put :update, {:id => avaliacao.to_param, :avaliacao => { "Nota" => "invalid value" }}, valid_session
        assigns(:avaliacao).should eq(avaliacao)
      end

      it "re-renders the 'edit' template" do
        avaliacao = Avaliacao.create! valid_attributes
        # Trigger the behavior that occurs when invalid params are submitted
        Avaliacao.any_instance.stub(:save).and_return(false)
        put :update, {:id => avaliacao.to_param, :avaliacao => { "Nota" => "invalid value" }}, valid_session
        response.should render_template("edit")
      end
    end
  end

  describe "DELETE destroy" do
    it "destroys the requested avaliacao" do
      avaliacao = Avaliacao.create! valid_attributes
      expect {
        delete :destroy, {:id => avaliacao.to_param}, valid_session
      }.to change(Avaliacao, :count).by(-1)
    end

    it "redirects to the avaliacoes list" do
      avaliacao = Avaliacao.create! valid_attributes
      delete :destroy, {:id => avaliacao.to_param}, valid_session
      response.should redirect_to(avaliacoes_url)
    end
  end

end
