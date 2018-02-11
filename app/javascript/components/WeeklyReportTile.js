import React from 'react'

import {LineChart, Line, XAxis, YAxis, CartesianGrid, Tooltip, Legend, BarChart, Bar} from 'recharts';


const WeeklyReportTile = (props) => {


    let goals = props.goals;
    let inputs = props.inputs;

    // let mappedInputs = inputs.inputs.map((input) => {
    //   return input.goal_id
    // })

    let mappedGoals = goals.goals.map((goal) => {
      return goal.name
    })

    let mappedData = inputs.inputs.map(input => (
      {name: input.goal_id, accomplished: 1}
    ));


    return(

      <div id="graphs">

        <h2>Weekly Report</h2>

        <BarChart width={750} height={250} data={mappedData}>
            <CartesianGrid strokeDasharray="3 3" />
            <XAxis dataKey="name" />
            <YAxis />
            <Tooltip />
            <Legend />

            <Bar dataKey="accomplished" fill="#87AC4E" />
            {
              goals.goals.map((goal) => {
                return (<Bar dataKey={`${goal.id} - ${goal.name}`} fill="#00BFFF" />)
              })
            }

        </BarChart>


        {/* <BarChart width={700} height={250} data={data}>
            <CartesianGrid strokeDasharray="3 3" />
            <XAxis dataKey="name" />
            <YAxis />
            <Tooltip />
            <Legend />
          <Bar dataKey='Day 1' fill="#87AC4E" />
          <Bar dataKey="Day 2" fill="#d884c7" />
          <Bar dataKey="Day 3" fill="#0066ff" />
          <Bar dataKey="Day 4" fill="#cccc00" />
          <Bar dataKey="Day 5" fill="#ff5050" />
          <Bar dataKey="Day 6" fill="#00ffff" />
          <Bar dataKey="Day 7" fill="#ff9900" />
        </BarChart> */}

      </div>
    )
  }

  export default WeeklyReportTile;
