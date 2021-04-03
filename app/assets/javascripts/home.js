user = "hanslauwers";
url = "https://api.github.com/users/hanslauwers/events";

function transformEvents(events){
  commits = events
  all_output = _.map(commits, (c) => 
    ({"created_at" : c.created_at,
      "author" : c.actor.display_login, 
      "repo" : c.repo.name,
      "repo_url" : "https://www.github.com/" + c.repo.name,
      "commits" : c.payload.commits
    })
  );
  _.sortBy(all_output, "created_at");
  output = _.take(all_output, 5);

  commits_html = "<div class='panel'><div class='panel-body'>";
  index = 0;
  _.forEach(output,
    function (el) {
      _.forEachRight(el.commits,
        function(commit) {
          index += 1;
          if(index <= 5) {
            commits_html = commits_html.concat(
              "<div class='commit-item'>" + 
              "<div class='commit-message'>" + 
              "<a href='" + el.repo_url + "/commit/" + commit.sha + "' target='_blank'>" + commit.message + "</a>" + 
              "</div>" +
              "<div class='commit-date'>" + 
              "Committed <time class='timeago' datetime='" + el.created_at + "'>" + el.created_at + "</time> " + 
              "on <a href='" + el.repo_url + "' target='_blank'>" + el.repo.split("/")[1] + "</a>" + 
              "</div>" +
              "</div>");
          }
        })
    }
  );

  commits_html = commits_html.concat("</div></div>");

  $(".commits").html(commits_html);
}

get_events = () => {
  $.get(url)
    .done(
      function(data) {
        transformEvents(data);
        $("time.timeago").timeago();
      }
    )
}

$(document).ready(get_events);