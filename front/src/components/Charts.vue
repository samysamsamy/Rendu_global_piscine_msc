<template>
  <v-card width="100%" height="98%">
  <v-container>
    <v-row class="size">
        <canvas id="planet-chart"></canvas>
    </v-row>
    <v-row class="size">
        <v-card elevation="6" style="margin: auto">
          <v-card-title class="justify-center">CHART PANNEL</v-card-title>
          <v-card-subtitle class="text-center">Selectionnez les informations que vous souhaitez voir</v-card-subtitle>
          <v-card-subtitle class="text-center">ainsi que le type de graphique voulu</v-card-subtitle>
          <v-card-actions>
            <v-btn>clique salope</v-btn>
            <v-btn>clique salope</v-btn>
            <v-btn>clique salope</v-btn>
            <v-btn>clique salope</v-btn>
          </v-card-actions>
        </v-card>
    </v-row>
  </v-container>
  </v-card>
</template>

<script>
import {Chart, registerables} from 'chart.js'
import BarChart from "../ChartsType";

Chart.register(...registerables)

export default {
  name: 'ChartBasic',
  data() {
    return {
      DataChart : {}
    }
  },
  mounted() {
    this.DataChart = BarChart
    const ctx = document.getElementById('planet-chart');
    new Chart(ctx, this.DataChart);
  }
}
</script>

<style>
.size {
  width: 50vw;
  min-width: 400px;
  margin: auto;
}
</style>