class Initialize < ActiveRecord::Migration
  def up
    Spree::Role.where(name: :dibs_referral).first_or_create
    add_column :spree_orders, :dibs_referral_id, :integer
    add_index :spree_orders, :dibs_referral_id, name: 'dibs_referral_id_ix'
  end

  def down
    Spree::Role.where(name: :dibs_referral).each { |role| role.destroy }
    remove_index :spree_orders, name: 'dibs_referral_id_ix'
    remove_column :spree_orders, :dibs_referral_id
  end
end
