const { default: axios } = require('axios')
const express = require('express');
const route = express.Router();



route.get('/', (req, res) => {
    axios.get('http://localhost:5000')
        .then(function (resp) {
            // Ensure resp.data contains kuchniezdjecia property
            console.log(resp.data)
            if (!resp.data.kuchniezdjecia) {
              resp.data.kuchniezdjecia = []; // default to an empty array if it doesn't exist
            }
            res.render('index', { dane: resp.data })
        })
  })

route.get('/kontakt', (req, res) => {
  axios.get('http://localhost:5000/')
      .then(function (resp) {
          res.render('kontakt', { dane: resp.data })
      })
})

route.get('/onas', (req, res) => {
    axios.get('http://localhost:5000/')
        .then(function (resp) {
            res.render('onas', { dane: resp.data })
        })
})

route.get('/blog', (req, res) => {
    axios.get('http://localhost:5000/')
        .then(function (resp) {
            res.render('blog', { dane: resp.data })
        })
})

route.get('/kuchnia_polska', (req, res) => {
    axios.get('http://localhost:5000/kuchnia_polska')
        .then(function (resp) {
            console.log(resp.data)
            res.render('kuchniaPolska', { data: resp.data })
        })
})

route.get('/kuchnia_francuska', (req, res) => {
    axios.get('http://localhost:5000/kuchnia_francuska')
        .then(function (resp) {
            console.log(resp.data)
            res.render('kuchniaFrancuska', { data: resp.data })
        })
})

route.get('/kuchnia_wloska', (req, res) => {
    axios.get('http://localhost:5000/kuchnia_wloska')
        .then(function (resp) {
            console.log(resp.data)
            res.render('kuchniaWloska', { data: resp.data })
        })
})

route.get('/o_nas', (req, res) => {
    axios.get('http://localhost:5000/o_nas')
        .then(function (resp) {
            console.log(resp.data)
            res.render('onas', { data: resp.data })
        })
})

module.exports = route;
