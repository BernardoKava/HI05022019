class RemoveDeprecatedFielsFromBudgets < ActiveRecord::Migration[5.2]
  def change
    remove_column :budgets, :inflow_salary, :numeric
    remove_column :budgets, :inflow_child_benefit, :numeric
    remove_column :budgets, :inflow_lotto_winnings, :numeric
    remove_column :budgets, :inflow_other, :numeric
    remove_column :budgets, :outflow_rent, :numeric
    remove_column :budgets, :outflow_telecom, :numeric
    remove_column :budgets, :outflow_eflow, :numeric
    remove_column :budgets, :outflow_food, :numeric
    remove_column :budgets, :outflow_electricity, :numeric
    remove_column :budgets, :outflow_transport, :numeric
    remove_column :budgets, :outflow_credit_card_fees, :numeric
    remove_column :budgets, :outflow_current_account_fees, :numeric
    remove_column :budgets, :outflow_allowance_gaelle, :numeric
    remove_column :budgets, :outflow_allowance_herve, :numeric
    remove_column :budgets, :outflow_loan_ptsb, :numeric
    remove_column :budgets, :outflow_loan_chill, :numeric
    remove_column :budgets, :outflow_lodgement_cu, :numeric
    remove_column :budgets, :outflow_family_support, :numeric
    remove_column :budgets, :outflow_entert_nightout, :numeric
    remove_column :budgets, :outflow_entert_dayout, :numeric
    remove_column :budgets, :outflow_apple_str, :numeric
    remove_column :budgets, :outflow_aa_irl, :numeric
    remove_column :budgets, :outflow_lottery_ticket, :numeric
    remove_column :budgets, :outflow_car_tax, :numeric
    remove_column :budgets, :outflow_heating_oil, :numeric
    remove_column :budgets, :outflow_car_service, :numeric
    remove_column :budgets, :outflow_spiritual_tools, :numeric
    remove_column :budgets, :outflow_other_exp, :numeric
    remove_column :budgets, :outflow_work_lunch, :numeric
    remove_column :budgets, :outflow_pharmacy, :numeric
    remove_column :budgets, :outflow_furniture, :numeric
  end
end
