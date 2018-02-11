import React from 'react'
import {LineChart, Line, XAxis, YAxis, CartesianGrid, Tooltip, Legend, BarChart, Bar, Radar, RadarChart, PolarGrid, PolarAngleAxis, PolarRadiusAxis} from 'recharts';

const MonthlyReportTile = (props) => {

    let mappedData = props.inputs.inputs.map(input => (
      {name: input.goal_id, accomplished: 1}
    ));

    return(

      <div id="graphs">

        <h2>Monthly Report</h2>

        <BarChart width={750} height={250} data={mappedData}>
          <CartesianGrid strokeDasharray="3 3" />
          <XAxis dataKey="name" />
          <YAxis />
          <Tooltip />
          <Legend />
          <Bar dataKey="accomplished" fill="#87AC4E" />
          {
            props.goals.goals.map((goal) => {
              return (<Bar dataKey={`${goal.id} - ${goal.name}`} fill="#00BFFF" />)
            })
          }
        </BarChart>
      </div>
    )};

  export default MonthlyReportTile;
