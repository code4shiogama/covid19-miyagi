<template>
  <v-col cols="12" md="6" class="DataCard">
    <time-bar-chart
      :title="'PCR検査実施件数'"
      :title-id="'number-of-inspection-persons'"
      :chart-id="'number-of-inspection-persons'"
      :chart-data="graphData"
      :date="data.date"
      :unit="'件'"
    >
      <template v-slot:description>
        <ul>
          <li>
            ※検査開始日；令和２年１月３０日（木）１９時
          </li>
          <li>
            ※PCR検査実施件数は，帰国者・接触者外来を通じて検査を行った数のみを計上しており，退院時の確認検査などは含まれておりません。
          </li>
        </ul>
      </template>
    </time-bar-chart>
  </v-col>
</template>

<script>
import Data from '@/data/data.json'
import formatGraph from '@/utils/formatGraph'
import TimeBarChart from '@/components/TimeBarChart.vue'

export default {
  components: {
    TimeBarChart
  },
  data() {
    const formatData = Data.inspection_persons.labels.map((date, i) => {
      return {
        日付: date,
        小計: Data.inspection_persons.datasets[0].data[i]
      }
    })

    // 検査実施人数グラフ
    const graphData = formatGraph(formatData)

    return {
      data: Data.inspection_persons,
      graphData
    }
  }
}
</script>
