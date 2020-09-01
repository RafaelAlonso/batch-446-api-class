class RestaurantPolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      scope.all
    end
  end

  def create?
    # que usuário pode criar um restaurante
    true
  end

  def show?
    # que usuário pode ver os detalhes do meu restaurante
    true
  end

  def update?
    # que usuário pode atualizar as infos do meu restaurante
    # record => restaurante que estou autorizando
    # user => usuario logado no momento
    user == record.user
  end

  def destroy?
    # que usuário pode deletar o meu restaurante
    # record => restaurante que estou autorizando
    # user => usuario logado no momento
    user == record.user
  end
end
