[x, fs] = audioread('vaiueo2d.wav'); 
[f0raw,vuv,auxouts,prmouts] = MulticueF0v14(x,fs); % old method
plot(f0raw)
[ap,analysisParams]=exstraightAPind(x,fs,f0raw);
[n3sgram,prmP]=exstraightspec(x,f0raw.*vuv,fs);
[sy,prmS] = exstraightsynth(f0raw.*vuv,n3sgram,ap,fs);
audiowrite('handel.wav',sy,fs)
sound(sy,fs)


% new method
[f0rawFixp,apFixp,prmF0]=exstraightsource(x,fs);
hold on
plot(f0rawFixp)
hold off
[n3sgramFixp,prmP]=exstraightspec(x,f0rawFixp,fs);

[syFixp,prmS] = exstraightsynth(f0rawFixp,n3sgramFixp,apFixp,fs);
sound(syFixp,fs)


plot(sy)
hold on
plot(syFixp)
hold off