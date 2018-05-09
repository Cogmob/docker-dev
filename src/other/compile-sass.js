var gulp = require('gulp');
var path = process.argv[2];
console.log(path);
process.chdir(path);

gulp
    .src('*.scss')
    .pipe(require('gulp-print').default())
    .pipe(require('gulp-sass')())
    .pipe(gulp.dest('.'));
