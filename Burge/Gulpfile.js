var gulp = require("gulp");
var uglify = require("gulp-uglify");
var concat = require("gulp-concat");
var sass = require("gulp-sass");
var environments = require("gulp-environments");
var autoprefixer = require("gulp-autoprefixer");
var browserSync = require("browser-sync").create(); // webserver & livereload watch change file
var browserify = require("browserify");
var source = require("vinyl-source-stream");
var useref = require("gulp-useref");
var refHash = require("gulp-ref-hash");
var development = environments.development;
var production = environments.production;
const baseDir = "./app";
// build source
gulp.task("useref", function() {
    return gulp
        .src("./index.html")
        .pipe(useref())
        .pipe(gulp.dest("dist"));
});

gulp.task("scss", function() {
    gulp.src("./app/assets/scss/**/*.scss")
        .pipe(sass().on("error", sass.logError))
        .pipe(
            autoprefixer({
                browsers: ["last 2 versions"]
            })
        )
        .pipe(
            browserSync.reload({
                stream: true
            })
        )
        .pipe(gulp.dest("./app/assets/css"));
});

gulp.task("browserSync", function() {
    browserSync.init({
        server: {
            baseDir: "./"
        }
    });
});

// default watch dev
gulp.task("watch", ["browserSync", "scss"], function() {
    gulp.watch("./app/assets/scss/**/*.scss", ["scss"]);
    gulp.watch(
        ["./app/**/*.{html,htm,css,js}", "index.html"],
        browserSync.reload
    );
});
