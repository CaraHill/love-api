class Love
  def calculate(fname, sname)
    response = Unirest.get("https://love-calculator.p.mashape.com/getPercentage",
      headers:{"X-Mashape-Key" => "73HmZJg1KTmshvQgUyg2e6yOE7fHp1S3aLdjsnYNzIYmzGEDSS",
        "Accept" => "application/json"},
      parameters:{fname: fname, sname: sname})
    return response.body
  end
end
