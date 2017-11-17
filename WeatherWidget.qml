import QtQuick 2.4
import QtQuick.Controls.Material 2.2
import "Weather.js" as WeatherUtil

WeatherWidgetForm {
    searchMouseArea.onClicked: {
        WeatherUtil.getWeather(inputCity.text, getWeatherCallback)
    }

    primaryColor: Material.color(Material.LightBlue)

    Component.onCompleted: {
        WeatherUtil.getWeather('Kolkata', getWeatherCallback)
    }

    function getWeatherCallback(data) {
        var weatherData = data.query.results.channel.item

        todayWeatherImage.source = WeatherUtil.getIconFromWeatherCode(weatherData.condition.code)
        todayWeatherDesc.text = weatherData.condition.text
        todayTemperature.text = weatherData.condition.temp

        forecastImageDay1.source = WeatherUtil.getIconFromWeatherCode(weatherData.forecast[1].code)
        forecastDay1Temperature.text = weatherData.forecast[1].high
        forecastDay1.text = weatherData.forecast[1].day

        forecastImageDay2.source = WeatherUtil.getIconFromWeatherCode(weatherData.forecast[2].code)
        forecastDay2Temperature.text = weatherData.forecast[2].high
        forecastDay2.text = weatherData.forecast[2].day

        forecastImageDay3.source = WeatherUtil.getIconFromWeatherCode(weatherData.forecast[3].code)
        forecastDay3Temperature.text = weatherData.forecast[3].high
        forecastDay3.text = weatherData.forecast[3].day
    }
}
