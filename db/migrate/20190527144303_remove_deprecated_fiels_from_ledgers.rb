class RemoveDeprecatedFielsFromLedgers < ActiveRecord::Migration[5.2]
  def change

    remove_column :ledgers, :bud_inflow_salary, :numeric
    remove_column :ledgers, :bud_inflow_child_benefit, :numeric
    remove_column :ledgers, :bud_inflow_lotto_winnings, :numeric
    remove_column :ledgers, :bud_inflow_other, :numeric
    remove_column :ledgers, :bud_outflow_rent, :numeric
    remove_column :ledgers, :bud_outflow_telecom, :numeric
    remove_column :ledgers, :bud_outflow_eflow, :numeric
    remove_column :ledgers, :bud_outflow_food, :numeric
    remove_column :ledgers, :bud_outflow_electricity, :numeric
    remove_column :ledgers, :bud_outflow_transport, :numeric
    remove_column :ledgers, :bud_outflow_credit_card_fees, :numeric
    remove_column :ledgers, :bud_outflow_current_account_fees, :numeric
    remove_column :ledgers, :bud_outflow_allowance_gaelle, :numeric
    remove_column :ledgers, :bud_outflow_allowance_herve, :numeric
    remove_column :ledgers, :bud_outflow_loan_ptsb, :numeric
    remove_column :ledgers, :bud_outflow_loan_chill, :numeric
    remove_column :ledgers, :bud_outflow_lodgement_cu, :numeric
    remove_column :ledgers, :bud_outflow_family_support, :numeric
    remove_column :ledgers, :bud_outflow_entert_nightout, :numeric
    remove_column :ledgers, :bud_outflow_entert_dayout, :numeric
    remove_column :ledgers, :bud_outflow_apple_str, :numeric
    remove_column :ledgers,:bud_outflow_aa_irl, :numeric
    remove_column :ledgers, :bud_outflow_lottery_ticket, :numeric
    remove_column :ledgers, :bud_outflow_car_tax, :numeric
    remove_column :ledgers,:bud_outflow_heating_oil, :numeric
    remove_column :ledgers, :bud_outflow_car_service, :numeric
    remove_column :ledgers, :bud_outflow_spiritual_tools, :numeric
    remove_column :ledgers, :bud_outflow_other_exp, :numeric
    remove_column :ledgers,  :bud_outflow_work_lunch, :numeric
    remove_column :ledgers, :bud_outflow_pharmacy, :numeric
    remove_column :ledgers, :bud_outflow_furniture, :numeric
    remove_column :ledgers, :act_inflow_salary, :numeric
    remove_column :ledgers, :act_inflow_child_benefit, :numeric
    remove_column :ledgers, :act_inflow_lotto_winnings, :numeric
    remove_column :ledgers, :act_outflow_rent, :numeric
    remove_column :ledgers, :act_outflow_telecom, :numeric
    remove_column :ledgers, :act_outflow_eflow, :numeric
    remove_column :ledgers, :act_outflow_food, :numeric
    remove_column :ledgers,:act_outflow_electricity, :numeric
    remove_column :ledgers, :act_outflow_transport, :numeric
    remove_column :ledgers, :act_outflow_credit_card_fees, :numeric
    remove_column :ledgers, :act_outflow_current_account_fees, :numeric
    remove_column :ledgers,:act_outflow_allowance_gaelle, :numeric
    remove_column :ledgers, :act_outflow_allowance_herve, :numeric
    remove_column :ledgers, :act_outflow_loan_ptsb, :numeric
    remove_column :ledgers, :act_outflow_loan_chill, :numeric
    remove_column :ledgers, :act_outflow_lodgement_cu, :numeric
    remove_column :ledgers,:act_outflow_family_support, :numeric
    remove_column :ledgers, :act_outflow_entert_nightout, :numeric
    remove_column :ledgers, :act_outflow_entert_dayout, :numeric
    remove_column :ledgers, :act_outflow_apple_str, :numeric
    remove_column :ledgers, :act_outflow_aa_irl, :numeric
    remove_column :ledgers, :act_outflow_lottery_ticket, :numeric
    remove_column :ledgers, :act_outflow_car_tax, :numeric
    remove_column :ledgers, :act_outflow_heating_oil, :numeric
    remove_column :ledgers, :act_outflow_car_service, :numeric
    remove_column :ledgers, :act_outflow_spiritual_tools, :numeric
    remove_column :ledgers,:act_outflow_other_exp, :numeric
    remove_column :ledgers, :act_outflow_work_lunch, :numeric
    remove_column :ledgers, :act_outflow_pharmacy, :numeric
    remove_column :ledgers, :act_outflow_furniture, :numeric





  end
end
