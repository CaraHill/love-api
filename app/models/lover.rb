class Lover
  def calculate(fname, sname)
    response = Unirest.get("https://love-calculator.p.mashape.com/getPercentage",
      headers:{"X-Mashape-Key" => "73HmZJg1KTmshvQgUyg2e6yOE7fHp1S3aLdjsnYNzIYmzGEDSS",
        "Accept" => "application/json"},
      parameters:{fname: fname, sname: sname})
    return response.body
  end

  def sentiment(to, from)
    response = Unirest.get("http://loveaas.com/everyone/LoveMaster/crush/#{to}/#{from}")
    return response.body
  end
end
