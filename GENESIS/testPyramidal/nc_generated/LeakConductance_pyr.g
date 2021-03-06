

// **************************************************
// File generated by: neuroConstruct v1.7.0 
// **************************************************

// This file holds the implementation in GENESIS of the Cell Mechanism:
// LeakConductance_pyr (Type: Channel mechanism, Model: Template based ChannelML file)

// with parameters: 
// /channelml/@units = SI Units 
// /channelml/notes = ChannelML file containing a single Channel description 
// /channelml/channel_type/@name = LeakConductance_pyr 
// /channelml/channel_type/@density = yes 
// /channelml/channel_type/status/@value = in_progress 
// /channelml/channel_type/notes = Simple example of a leak/passive conductance. Note: for GENESIS cells with a single leak conductance,         it is better to use the Rm and Em variab ... 
// /channelml/channel_type/current_voltage_relation/@cond_law = ohmic 
// /channelml/channel_type/current_voltage_relation/@ion = non_specific 
// /channelml/channel_type/current_voltage_relation/@default_erev = -0.066 
// /channelml/channel_type/current_voltage_relation/@default_gmax = 0.7042 

// File from which this was generated: /home/boris/git/ACnet2/neuroConstruct/cellMechanisms/LeakConductance_pyr/LeakConductance.xml

// XSL file with mapping to simulator: /home/boris/git/ACnet2/neuroConstruct/cellMechanisms/LeakConductance_pyr/ChannelML_v1.8.1_GENESIStab.xsl



// This is a GENESIS script file generated from a ChannelML v1.8.1 file
// The ChannelML file is mapped onto a tabchannel object


// Units of ChannelML file: SI Units, units of GENESIS file generated: SI Units

/*
    ChannelML file containing a single Channel description
*/

function make_LeakConductance_pyr

        /*
            Simple example of a leak/passive conductance. Note: for GENESIS cells with a single leak conductance,
        it is better to use the Rm and Em variables for a passive current.

        */
        

        str chanpath = "/library/LeakConductance_pyr"

        if ({exists {chanpath}})
            return
        end
        
        create leakage {chanpath}
            

        setfield {chanpath} \ 
            Ek              -0.066 \
            Ik              0 
        
        setfield {chanpath} Gk 0.7042

        


end

