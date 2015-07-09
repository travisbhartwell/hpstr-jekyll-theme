{
  "RedCloth" = {
    version = "4.2.9";
    source = {
      type = "gem";
      sha256 = "06pahxyrckhgb7alsxwhhlx1ib2xsx33793finj01jk8i054bkxl";
    };
  };
  "activesupport" = {
    version = "4.2.3";
    source = {
      type = "gem";
      sha256 = "0nxngfznpwq33i410h0r1rkgs8sifd257vhb4mqwk66yz254p59k";
    };
    dependencies = [
      "i18n"
      "json"
      "minitest"
      "thread_safe"
      "tzinfo"
    ];
  };
  "blankslate" = {
    version = "2.1.2.4";
    source = {
      type = "gem";
      sha256 = "0jnnq5q5dwy2rbfcl769vd9bk1yn0242f6yjlb9mnqdm9627cdcx";
    };
  };
  "celluloid" = {
    version = "0.16.0";
    source = {
      type = "gem";
      sha256 = "044xk0y7i1xjafzv7blzj5r56s7zr8nzb619arkrl390mf19jxv3";
    };
    dependencies = [
      "timers"
    ];
  };
  "classifier-reborn" = {
    version = "2.0.3";
    source = {
      type = "gem";
      sha256 = "0vca8jl7nbgzyb7zlvnq9cqgabwjdl59jqlpfkwzv6znkri7cpby";
    };
    dependencies = [
      "fast-stemmer"
    ];
  };
  "coffee-script" = {
    version = "2.4.1";
    source = {
      type = "gem";
      sha256 = "0rc7scyk7mnpfxqv5yy4y5q1hx3i7q3ahplcp4bq2g5r24g2izl2";
    };
    dependencies = [
      "coffee-script-source"
      "execjs"
    ];
  };
  "coffee-script-source" = {
    version = "1.9.1.1";
    source = {
      type = "gem";
      sha256 = "1arfrwyzw4sn7nnaq8jji5sv855rp4c5pvmzkabbdgca0w1cxfq5";
    };
  };
  "colorator" = {
    version = "0.1";
    source = {
      type = "gem";
      sha256 = "09zp15hyd9wlbgf1kmrf4rnry8cpvh1h9fj7afarlqcy4hrfdpvs";
    };
  };
  "execjs" = {
    version = "2.5.2";
    source = {
      type = "gem";
      sha256 = "0y2193yhcyz9f97m7g3wanvwzdjb08sllrj1g84sgn848j12vyl0";
    };
  };
  "fast-stemmer" = {
    version = "1.0.2";
    source = {
      type = "gem";
      sha256 = "0688clyk4xxh3kdb18vi089k90mca8ji5fwaknh3da5wrzcrzanh";
    };
  };
  "ffi" = {
    version = "1.9.10";
    source = {
      type = "gem";
      sha256 = "1m5mprppw0xcrv2mkim5zsk70v089ajzqiq5hpyb0xg96fcyzyxj";
    };
  };
  "gemoji" = {
    version = "2.1.0";
    source = {
      type = "gem";
      sha256 = "0n3r6p1lrcwq2y3fzbj350qai0z8giz8wjhhxall8qkvacrcbb6w";
    };
  };
  "github-pages" = {
    version = "37";
    source = {
      type = "gem";
      sha256 = "15lr8r8abylwihfs7r80izq5wbs3j5lai0x7q0fz18rcv6v1s1yn";
    };
    dependencies = [
      "RedCloth"
      "github-pages-health-check"
      "jekyll"
      "jekyll-coffeescript"
      "jekyll-feed"
      "jekyll-mentions"
      "jekyll-redirect-from"
      "jekyll-sass-converter"
      "jekyll-sitemap"
      "jemoji"
      "kramdown"
      "liquid"
      "maruku"
      "mercenary"
      "pygments.rb"
      "rdiscount"
      "redcarpet"
      "terminal-table"
    ];
  };
  "github-pages-health-check" = {
    version = "0.3.1";
    source = {
      type = "gem";
      sha256 = "0yrsq0lrhbk55zshpbilmbz0276rm0xj0mhycpsw2jyma7jglxfr";
    };
    dependencies = [
      "net-dns"
      "public_suffix"
    ];
  };
  "hitimes" = {
    version = "1.2.2";
    source = {
      type = "gem";
      sha256 = "17y3ggqxl3m6x9gqpgdn39z0pxpmw666d40r39bs7ngdmy680jn4";
    };
  };
  "html-pipeline" = {
    version = "1.9.0";
    source = {
      type = "gem";
      sha256 = "1agm6qzgiy70rj8ymglwj7scbq5ngl25cmkwmjak30b8gm6jc4k9";
    };
    dependencies = [
      "activesupport"
      "nokogiri"
    ];
  };
  "i18n" = {
    version = "0.7.0";
    source = {
      type = "gem";
      sha256 = "1i5z1ykl8zhszsxcs8mzl8d0dxgs3ylz8qlzrw74jb0gplkx6758";
    };
  };
  "jekyll" = {
    version = "2.4.0";
    source = {
      type = "gem";
      sha256 = "1n8m0cw91yayvcspqi3x9y9y0nahagg0sy8r6pn0zplqg1vh7y1l";
    };
    dependencies = [
      "classifier-reborn"
      "colorator"
      "jekyll-coffeescript"
      "jekyll-gist"
      "jekyll-paginate"
      "jekyll-sass-converter"
      "jekyll-watch"
      "kramdown"
      "liquid"
      "mercenary"
      "pygments.rb"
      "redcarpet"
      "safe_yaml"
      "toml"
    ];
  };
  "jekyll-coffeescript" = {
    version = "1.0.1";
    source = {
      type = "gem";
      sha256 = "19nkqbaxqbzqbfbi7sgshshj2krp9ap88m9fc5pa6mglb2ypk3hg";
    };
    dependencies = [
      "coffee-script"
    ];
  };
  "jekyll-feed" = {
    version = "0.3.0";
    source = {
      type = "gem";
      sha256 = "116j5zpb21qj3qnn2gxz0c7grfqxs83f02m9r555wb1dkyi1w8w5";
    };
  };
  "jekyll-gist" = {
    version = "1.2.1";
    source = {
      type = "gem";
      sha256 = "10hywgdwqafa21nwa5br54wvp4wsr3wnx64v8d81glj5cs17f9bv";
    };
  };
  "jekyll-mentions" = {
    version = "0.2.1";
    source = {
      type = "gem";
      sha256 = "1i6827pyg83wlv66idaqxjqjxrvgl69dqjd2ylls4z12r2dl6k47";
    };
    dependencies = [
      "html-pipeline"
      "jekyll"
    ];
  };
  "jekyll-paginate" = {
    version = "1.1.0";
    source = {
      type = "gem";
      sha256 = "0r7bcs8fq98zldih4787zk5i9w24nz5wa26m84ssja95n3sas2l8";
    };
  };
  "jekyll-redirect-from" = {
    version = "0.8.0";
    source = {
      type = "gem";
      sha256 = "0xfhy1wyd792f8cnk36a4dq7751dls281w5nwgialdn9596v0i0a";
    };
    dependencies = [
      "jekyll"
    ];
  };
  "jekyll-sass-converter" = {
    version = "1.2.0";
    source = {
      type = "gem";
      sha256 = "192cmpfa97sirxqd9ay6959w13ky21hhgx8il785kqrm3956icml";
    };
    dependencies = [
      "sass"
    ];
  };
  "jekyll-sitemap" = {
    version = "0.8.1";
    source = {
      type = "gem";
      sha256 = "1pvhaxg7kqfyvg8k7p5ldk8pnq4jn868rbh216ylbviibmgrai7v";
    };
  };
  "jekyll-watch" = {
    version = "1.2.1";
    source = {
      type = "gem";
      sha256 = "0p9mc8m4bggsqlq567g1g67z5fvzlm7yyv4l8717l46nq0d52gja";
    };
    dependencies = [
      "listen"
    ];
  };
  "jemoji" = {
    version = "0.4.0";
    source = {
      type = "gem";
      sha256 = "18yrllgyhaa7vllb23lyaw5lpr5i5j6k7yhw7jmaqimi4i9msy12";
    };
    dependencies = [
      "gemoji"
      "html-pipeline"
      "jekyll"
    ];
  };
  "json" = {
    version = "1.8.3";
    source = {
      type = "gem";
      sha256 = "1nsby6ry8l9xg3yw4adlhk2pnc7i0h0rznvcss4vk3v74qg0k8lc";
    };
  };
  "kramdown" = {
    version = "1.5.0";
    source = {
      type = "gem";
      sha256 = "1max2dyap3lwi6ssaqi5gbzpmb0nlx1qy47bwc1bpls3y18hd6hm";
    };
  };
  "liquid" = {
    version = "2.6.2";
    source = {
      type = "gem";
      sha256 = "1k7lx7szwnz7vv3hqpdb6bgw8p73sa1ss9m1m5h0jaqb9xkqnfzb";
    };
  };
  "listen" = {
    version = "2.10.1";
    source = {
      type = "gem";
      sha256 = "1ipainbx21ni7xakdbksxjim6nixvzfjkifb2d3v45a50dp3diqg";
    };
    dependencies = [
      "celluloid"
      "rb-fsevent"
      "rb-inotify"
    ];
  };
  "maruku" = {
    version = "0.7.0";
    source = {
      type = "gem";
      sha256 = "02svvs9w4dn6fmli0c6gh4l5x8kvyfj7g1d3kw9xdm6jib3fas5p";
    };
  };
  "mercenary" = {
    version = "0.3.5";
    source = {
      type = "gem";
      sha256 = "0ls7z086v4xl02g4ia5jhl9s76d22crgmplpmj0c383liwbqi9pb";
    };
  };
  "mini_portile" = {
    version = "0.6.2";
    source = {
      type = "gem";
      sha256 = "0h3xinmacscrnkczq44s6pnhrp4nqma7k056x5wv5xixvf2wsq2w";
    };
  };
  "minitest" = {
    version = "5.7.0";
    source = {
      type = "gem";
      sha256 = "0rxqfakp629mp3vwda7zpgb57lcns5znkskikbfd0kriwv8i1vq8";
    };
  };
  "net-dns" = {
    version = "0.8.0";
    source = {
      type = "gem";
      sha256 = "12nal6vhdyg0pbcqpsxqr59h7mbgdhcqp3v0xnzvy167n40gabf9";
    };
  };
  "nokogiri" = {
    version = "1.6.6.2";
    source = {
      type = "gem";
      sha256 = "1j4qv32qjh67dcrc1yy1h8sqjnny8siyy4s44awla8d6jk361h30";
    };
    dependencies = [
      "mini_portile"
    ];
  };
  "octopress" = {
    version = "3.0.9";
    source = {
      type = "gem";
      sha256 = "1vvxgqmfi9294761w7a9861c53z94kzq23zs9wxxxbcc99k64zkf";
    };
    dependencies = [
      "jekyll"
      "mercenary"
      "octopress-deploy"
      "octopress-escape-code"
      "octopress-hooks"
      "redcarpet"
      "titlecase"
    ];
  };
  "octopress-deploy" = {
    version = "1.3.0";
    source = {
      type = "gem";
      sha256 = "0h5kqfl8a50xkljby2lrm3qn89f25gqi0f6lc5lb7l42lr9ka5zp";
    };
    dependencies = [
      "colorator"
    ];
  };
  "octopress-escape-code" = {
    version = "2.0.6";
    source = {
      type = "gem";
      sha256 = "1yng4y2mryc0z1b8snylhdwkdrg4c6nkraswxvnvpm212gi89877";
    };
    dependencies = [
      "octopress-hooks"
    ];
  };
  "octopress-hooks" = {
    version = "2.6.1";
    source = {
      type = "gem";
      sha256 = "0kzh3v9dxwnl8gy9vnarn7xvdbvwsclxw0r2350dd8fdihlqjm8v";
    };
    dependencies = [
      "jekyll"
    ];
  };
  "parslet" = {
    version = "1.5.0";
    source = {
      type = "gem";
      sha256 = "0qp1m8n3m6k6g22nn1ivcfkvccq5jmbkw53vvcjw5xssq179l9z3";
    };
    dependencies = [
      "blankslate"
    ];
  };
  "posix-spawn" = {
    version = "0.3.11";
    source = {
      type = "gem";
      sha256 = "052lnxbkvlnwfjw4qd7vn2xrlaaqiav6f5x5bcjin97bsrfq6cmr";
    };
  };
  "public_suffix" = {
    version = "1.5.1";
    source = {
      type = "gem";
      sha256 = "0jipixy3lbiq75lxrsbhf4y206hl8l62izwkaaarhz6m0kamqfd0";
    };
  };
  "pygments.rb" = {
    version = "0.6.1";
    source = {
      type = "gem";
      sha256 = "01s9ph6gpi1fcfndlf6bcyc4asw7g7jihj2dgzqf7iy32g1yqif0";
    };
    dependencies = [
      "posix-spawn"
      "yajl-ruby"
    ];
  };
  "rb-fsevent" = {
    version = "0.9.5";
    source = {
      type = "gem";
      sha256 = "1p4rz4qqarl7xg2aldpra54h81yal93cbxdy02lmb9kf6f7y2fz4";
    };
  };
  "rb-inotify" = {
    version = "0.9.5";
    source = {
      type = "gem";
      sha256 = "0kddx2ia0qylw3r52nhg83irkaclvrncgy2m1ywpbhlhsz1rymb9";
    };
    dependencies = [
      "ffi"
    ];
  };
  "rdiscount" = {
    version = "2.1.7";
    source = {
      type = "gem";
      sha256 = "161499wyk0547y4h8ng6za44knpv5w6xgrqy4ywwpg00668lwm0j";
    };
  };
  "redcarpet" = {
    version = "3.1.2";
    source = {
      type = "gem";
      sha256 = "076p52lkns90hqs27rs4kns2bg7maz8qxr87bl34yd6in319flzz";
    };
  };
  "safe_yaml" = {
    version = "1.0.4";
    source = {
      type = "gem";
      sha256 = "1hly915584hyi9q9vgd968x2nsi5yag9jyf5kq60lwzi5scr7094";
    };
  };
  "sass" = {
    version = "3.4.15";
    source = {
      type = "gem";
      sha256 = "0nbsm28nfyyknaqg601yiwm7cj4cspjva08l5fsq1v19km31likb";
    };
  };
  "terminal-table" = {
    version = "1.5.2";
    source = {
      type = "gem";
      sha256 = "1s6qyj9ir1agbbi32li9c0c34dcl0klyxqif6mxy0dbvq7kqfp8f";
    };
  };
  "thread_safe" = {
    version = "0.3.5";
    source = {
      type = "gem";
      sha256 = "1hq46wqsyylx5afkp6jmcihdpv4ynzzq9ygb6z2pb1cbz5js0gcr";
    };
  };
  "timers" = {
    version = "4.0.1";
    source = {
      type = "gem";
      sha256 = "03ahv07wn1f2g3c5843q7sf03a81518lq5624s9f49kbrswa2p7l";
    };
    dependencies = [
      "hitimes"
    ];
  };
  "titlecase" = {
    version = "0.1.1";
    source = {
      type = "gem";
      sha256 = "1njx4d3iavqc8b0rb749jlph7yq1f0f9q57sm2bfw0qz7wiw8gsi";
    };
  };
  "toml" = {
    version = "0.1.2";
    source = {
      type = "gem";
      sha256 = "1wnvi1g8id1sg6776fvzf98lhfbscchgiy1fp5pvd58a8ds2fq9v";
    };
    dependencies = [
      "parslet"
    ];
  };
  "tzinfo" = {
    version = "1.2.2";
    source = {
      type = "gem";
      sha256 = "1c01p3kg6xvy1cgjnzdfq45fggbwish8krd0h864jvbpybyx7cgx";
    };
    dependencies = [
      "thread_safe"
    ];
  };
  "yajl-ruby" = {
    version = "1.2.1";
    source = {
      type = "gem";
      sha256 = "0zvvb7i1bl98k3zkdrnx9vasq0rp2cyy5n7p9804dqs4fz9xh9vf";
    };
  };
}