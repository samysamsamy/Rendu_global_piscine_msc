<template>
  <v-container fill-height>
    <v-tabs grow>
      <v-tab v-on:click="PutLineChart" >Line Chart</v-tab>
      <v-tab v-on:click="PutBarChart">Bar Chart</v-tab>
      <v-tab v-on:click="PutPieChart">Pie Chart</v-tab>
    </v-tabs>
      <v-col class="fill-height">
        <v-row align="center" justify="center">
              <canvas style="max-height: 600px; max-width: 80%" id="planet-chart"></canvas>
        </v-row>
        <v-row>
            <v-card elevation="6" style="margin: auto">
              <v-card-title class="justify-center">CHART PANNEL</v-card-title>
              <v-card-actions>
                <v-btn>Line chart</v-btn>
                <v-btn>Bar chart</v-btn>
              </v-card-actions>
            </v-card>
        </v-row>
      </v-col>
    </v-container>
</template>

<script>
import {Chart, registerables} from 'chart.js'
import {BarChart, LineChart, PieChart} from "../ChartsType";

Chart.register(...registerables)

export default {
  name: 'ChartBasic',
  data() {
    return {
      DataChart : {},
      mychart : null
    }
  },
  methods : {
    PutLineChart() {
      this.DataChart = LineChart
      this.mychart.destroy()
      const ctx = document.getElementById('planet-chart');
      this.mychart = new Chart(ctx, this.DataChart);
    },
    PutBarChart() {
      this.DataChart = BarChart
      this.mychart.destroy()
      const ctx = document.getElementById('planet-chart');
      this.mychart = new Chart(ctx, this.DataChart);
    },
    PutPieChart() {
      this.DataChart = PieChart
      this.mychart.destroy()
      const ctx = document.getElementById('planet-chart');
      this.mychart = new Chart(ctx, this.DataChart);
    }
  },
  mounted() {
    this.DataChart = LineChart
    const ctx = document.getElementById('planet-chart');
    this.mychart = new Chart(ctx, this.DataChart);
  }
}
</script>

<style>
.size {
  margin: auto;
  max-height: 30vh;
  max-width: 30vw;
}
</style>