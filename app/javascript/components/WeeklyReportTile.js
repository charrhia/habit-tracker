import React from 'react'
import {LineChart, Line, XAxis, YAxis, CartesianGrid, Tooltip, Legend, BarChart, Bar} from 'recharts';

const WeeklyReportTile = (props) => {


  const COLORS = [
    "#85C1E9",
    "#82E0AA",
    "#BB8FCE",
    "#F9E79F",
    "#F5B7B1",
    "#CCD1D1",
    "#F5B041",
    "#9B59B6"
  ]

    let fill;
    let mappedGoals = props.goals.goals.map((goal, index) => (
      fill = `${COLORS[index % COLORS.length]}`
    ))

    let mappedWeekData = props.inputs.inputs.map((input, index) => (
      {goal: input.goal_id, accomplished: index, fill: `${mappedGoals[index]}`}
    ))


    // let mappedWeekData = props.inputs.inputs.map(input => (
    //   {name: input.goal_id, accomplished: input.goal_id}
    // ));

    return(

      <div id="graphs">
        <h2>Weekly Report</h2>

        <BarChart width={750} height={250} data={mappedWeekData}>
            <CartesianGrid strokeDasharray="3 3" />
            <XAxis dataKey="goal" />
            <YAxis />
            {/* <Tooltip /> */}
            <Legend />
            <Bar dataKey="accomplished" fill="#ffffff" />
            {props.goals.goals.map((goal, index) => {
                return (<Bar key={index} dataKey={`${goal.name}`} fill={COLORS[index % COLORS.length]}/>)
              })}
        </BarChart>
      </div>
    )}

  export default WeeklyReportTile;
