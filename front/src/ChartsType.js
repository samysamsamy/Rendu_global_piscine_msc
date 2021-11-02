let BarChart = {
    type: "bar",
        data: {
        labels: ["Temps passé au travail sur la semaine", "Temps voulu", "Temps restant"],
            datasets: [
            {
                label: "Vous",
                data: [14, 40, 26],
                backgroundColor: "rgba(54,73,93,.5)",
                borderColor: "#36495d",
                borderWidth: 3
            },
            {
                label: "Utilisateurs",
                data: [18, 40, 24],
                backgroundColor: "rgba(13,178,13,.5)",
                borderColor: "#36495d",
                borderWidth: 3
            }

        ]
    },
    options: {
        responsive: true,
            lineTension: 1,
            scales: {
            yAxes: [
                {
                    ticks: {
                        beginAtZero: true,
                        padding: 25
                    }
                }
            ]
        }
    }
}

export default BarChart