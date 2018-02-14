import React from 'react'
import {LineChart, Line, XAxis, YAxis, CartesianGrid, Tooltip, Legend, BarChart, Bar} from 'recharts';

const DailyReportTile = (props) => {

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

    let mappedDayData = props.inputs.inputs.map((input, index) => (
      {goal: input.goal_id, accomplished: index, fill: `${mappedGoals[index]}`}
    ))

    return(

      <div id="graphs">

        <h2>Daily Report</h2>

        <BarChart width={750} height={250} data={mappedDayData}>
            <CartesianGrid strokeDasharray="3 3" />

            <XAxis dataKey="goal" />
            <YAxis />
            <Tooltip />
            <Legend />
            <Bar dataKey="accomplished" fill="#87AC4E" barSize={50} />

            {/* {props.goals.goals.map((goal) => {
                return (<Bar dataKey={`${goal.id} - ${goal.name}`} fill="#87AC4E" />)
              })} */}

              {props.goals.goals.map((goal, index) => {
                  return (<Bar key={index} dataKey={`${goal.id} - ${goal.name}`} fill={COLORS[index % COLORS.length]}/>)
                })}
        </BarChart>
      </div>
    )};

  export default DailyReportTile;
