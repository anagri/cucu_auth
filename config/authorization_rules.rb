authorization do
  role :guest do
    has_permission_on :users, :to => [:index, :new, :create, :show]
    has_permission_on :user_sessions, :to => [:create, :new]
  end

  role :staff do
    has_permission_on :users, :to => [:index, :edit, :update, :show] 
    has_permission_on :user_sessions, :to => :destroy
  end
end