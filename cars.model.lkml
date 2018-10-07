connection: "sasha-thesis"

include: "*.view.lkml"                       # include all views in this project
# include: "my_dashboard.dashboard.lookml"   # include a LookML dashboard called my_dashboard

# # Select the views that should be a part of this model,
# # and define the joins that connect them together.
#
explore: cars_data_large {


  join: location_data {
    type: left_outer
    relationship: many_to_one
    sql_on: ${location_data.postal_code} = ${cars_data_large.postal_code};;
  }
  }
