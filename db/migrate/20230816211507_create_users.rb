class CreateUsers < ActiveRecord::Migration[5.0]
  def change
    create_table :users do |t|
      t.string :email, null: false, default: '' # null: false significa que o valo não pode ser nulo. default: '' significa que se o usuário passar o valor nulo, será colocado uma string vazia
      t.string :name, null: false,  default: ''
      t.string :password_digest, null: false, default: ''

      t.timestamps
    end
  end
end
