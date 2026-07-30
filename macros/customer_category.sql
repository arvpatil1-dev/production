{% macro customer_category(revenue) %}
    case 
        when {{ revenue }} > 3 then 'best'
        when {{ revenue }} > 5 then 'top'
        else 'small'
    end
{% endmacro %}