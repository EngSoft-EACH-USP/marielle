Dado('que estou na página sobre período de violências contra mulheres') do
  visit '/reports/periods_of_violence'
end

Quando('faço nada') do
end

Então(/^é exibida a tabela periods_of_violence$/) do
  page.has_xpath?('/html/body/main/div/div/iframe')
  visit 'https://marielle-superset.herokuapp.com/superset/explore/?form_data=%7B%22queryFields%22%3A%7B%22groupby%22%3A%22groupby%22%2C%22metrics%22%3A%22metrics%22%7D%2C%22datasource%22%3A%221__table%22%2C%22viz_type%22%3A%22table%22%2C%22slice_id%22%3A8%2C%22url_params%22%3A%7B%7D%2C%22time_range_endpoints%22%3A%5B%22inclusive%22%2C%22exclusive%22%5D%2C%22time_grain_sqla%22%3Anull%2C%22time_range%22%3A%22Last+week%22%2C%22query_mode%22%3A%22aggregate%22%2C%22groupby%22%3A%5B%22PERIDOOCORRENCIA%22%5D%2C%22metrics%22%3A%5B%22count%22%5D%2C%22all_columns%22%3A%5B%5D%2C%22percent_metrics%22%3A%5B%5D%2C%22order_by_cols%22%3A%5B%5D%2C%22row_limit%22%3A10000%2C%22order_desc%22%3Atrue%2C%22adhoc_filters%22%3A%5B%5D%2C%22table_timestamp_format%22%3A%22smart_date%22%2C%22color_pn%22%3Atrue%2C%22show_cell_bars%22%3Atrue%7D&standalone=true&height=400"'
end