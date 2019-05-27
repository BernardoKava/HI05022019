class RemoveDeprecatedFielsFromCashflows < ActiveRecord::Migration[5.2]
  def change
    remove_column :cashflows, :inflow_salary, :numeric
    remove_column :cashflows, :inflow_child_benefit, :numeric
    remove_column :cashflows, :inflow_lotto_winnings, :numeric
    remove_column :cashflows, :inflow_other, :numeric
    remove_column :cashflows, :outflow_rent, :numeric
    remove_column :cashflows, :outflow_telecom, :numeric
    remove_column :cashflows, :outflow_eflow, :numeric
    remove_column :cashflows, :outflow_food, :numeric
    remove_column :cashflows, :outflow_electricity, :numeric
    remove_column :cashflows, :outflow_transport, :numeric
    remove_column :cashflows, :outflow_credit_card_fees, :numeric
    remove_column :cashflows, :outflow_current_account_fees, :numeric
    remove_column :cashflows, :outflow_allowance_gaelle, :numeric
    remove_column :cashflows, :outflow_allowance_herve, :numeric
    remove_column :cashflows, :outflow_loan_ptsb, :numeric
    remove_column :cashflows, :outflow_loan_chill, :numeric
    remove_column :cashflows, :outflow_lodgement_cu, :numeric
    remove_column :cashflows, :outflow_family_support, :numeric
    remove_column :cashflows, :outflow_entert_nightout, :numeric
    remove_column :cashflows, :outflow_entert_dayout, :numeric
    remove_column :cashflows, :outflow_apple_str, :numeric
    remove_column :cashflows, :outflow_aa_irl, :numeric
    remove_column :cashflows, :outflow_lottery_ticket, :numeric
    remove_column :cashflows, :outflow_car_tax, :numeric
    remove_column :cashflows, :outflow_heating_oil, :numeric
    remove_column :cashflows, :outflow_car_service, :numeric
    remove_column :cashflows, :outflow_spiritual_tools, :numeric
    remove_column :cashflows, :outflow_other_exp, :numeric
    remove_column :cashflows, :outflow_work_lunch, :numeric
    remove_column :cashflows, :outflow_pharmacy, :numeric
    remove_column :cashflows, :outflow_furniture, :numeric
  end
end
