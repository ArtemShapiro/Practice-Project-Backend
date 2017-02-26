class Ability
    include CanCan::Ability

    def initialize(user)
        can :manage, SeasonalAllergy, user: user
    end
end
