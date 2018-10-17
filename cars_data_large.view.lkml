view: cars_data_large {
  sql_table_name: public.cars_data_large ;;

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }

  dimension: user_id {
    tags: ["user_id", "brand", "fuel_type"]
    type: number
    sql: ${TABLE}.id ;;
  }


  measure: testing_m {
    tags: ["email", "user_id"]
    type: number
    sql: 1 ;;
  }

  dimension: brand {
    tags: ["id"]
    type: string
    sql: ${TABLE}.brand ;;
  }

  dimension_group: date_created {
    type: time
    timeframes: [
      raw,
      date,
      week,
      month,
      quarter,
      year
    ]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.date_created ;;
  }

  dimension: days_until_sold {
    type: number
    sql: ${TABLE}.days_until_sold ;;
  }

  dimension: fuel_type {
    type: string
    sql: ${TABLE}.fuel_type ;;
  }

  dimension: gearbox {
    type: string
    sql: ${TABLE}.gearbox ;;
  }

  dimension: kilometer {
    type: number
    sql: ${TABLE}.kilometer ;;
  }

  dimension_group: last_seen {
    type: time
    timeframes: [
      raw,
      date,
      week,
      month,
      quarter,
      year
    ]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.last_seen ;;
  }

  dimension: model {
    type: string
    sql: ${TABLE}.model ;;
  }

  dimension: month_of_registration {
    type: number
    sql: ${TABLE}.month_of_registration ;;
  }

  dimension: name {
    type: string
    sql: ${TABLE}.name ;;
  }

  dimension: not_repaired_damage {
    type: string
    sql: ${TABLE}.not_repaired_damage ;;
  }

  dimension: postal_code {
    type: number
    sql: ${TABLE}.postal_code ;;
  }

  dimension: power_ps {
    type: number
    sql: ${TABLE}.power_ps ;;
  }

  dimension: price {
    type: number
    sql: ${TABLE}.price ;;
  }

  dimension: vehicle_type {
    type: string
    sql: ${TABLE}.vehicle_type ;;
  }

  dimension: year_of_registration {
    type: number
    sql: ${TABLE}.year_of_registration ;;
  }

  measure: count {
    type: count
    drill_fields: [id, name]
  }
}
