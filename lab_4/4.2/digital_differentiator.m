function [output_signal] = digital_differentiator(input_signal)
    h = [1,-1];
    output_signal = conv(input_signal, h, "full");
end